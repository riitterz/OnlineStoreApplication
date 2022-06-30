//
//  DataChanges.swift
//  OnlineStoreApplication
//
//  Created by Macbook on 27.06.2022.
//

import Foundation
import Alamofire

class DataChanges: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!

    init(errorParser: AbstractErrorParser, sessionManager: Session, queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue  = queue
    }
}

extension DataChanges: DataChangesRequestFactory {


    func dataChanges(userId: Int, userName: String, password: String, mobileNumber: String, email: String, sex: String, creditСard: String, completionHandler: @escaping (AFDataResponse<DataChanges>) -> Void) {
        let requestModel = Changes(baseUrl: baseUrl, userId: userId, userName: userName, password: password, mobileNumber: mobileNumber, email: email, sex: sex, creditСard: creditСard)
       // self.request(request: requestModel, completionHandler: completionHandler)
    }

}

extension DataChanges {

    struct Changes: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "changeUserData.json"
        let userId: Int
        let userName: String
        let password: String
        let mobileNumber: String
        let email: String
        let sex: String
        let creditСard: String
        var parameters: Parameters? {
            return [
                "user_id": userId,
                "username": userName,
                "password": password,
                "mobileNumber": mobileNumber,
                "email": email,
                "sex": sex,
                "creditCard": creditСard
            ]
        }
    }
}

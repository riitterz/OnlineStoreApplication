//
//  SignUp.swift
//  OnlineStoreApplication
//
//  Created by Macbook on 29.06.2022.
//

import Foundation
import Alamofire

class SignUp: AbstractRequestFactory {
    
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")
    
    init(errorParser: AbstractErrorParser, sessionManager: Session, queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension SignUp: SignUpRequestFactory {
    func signUp(userId: Int, userName: String, password: String, mobileNomber: String, email: String, sex: String, creditCard: String, completionHandler: @escaping (AFDataResponse<SignUpResult>) -> Void) {
        let requestModel = Sign(baseUrl: baseUrl!, userId: userId, userName: userName, password: password, mobileNumber: mobileNomber, email: email, sex: sex, creditCard: creditCard)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension SignUp {
    
    struct Sign: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "signUprUser.json"
        let userId: Int
        let userName: String
        let password: String
        let mobileNumber: String
        let email: String
        let sex: String
        let creditCard: String
        var parameters: Parameters? {
            return [
                "user_id": userId,
                "username": userName,
                "password": password,
                "mobileNumber": mobileNumber,
                "email": email,
                "sex": sex,
                "creditCard": creditCard
            ]
        }
    }
}

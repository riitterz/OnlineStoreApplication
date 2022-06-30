//
//  DataChangesRequestFactory.swift
//  OnlineStoreApplication
//
//  Created by Macbook on 27.06.2022.
//

import Foundation
import Alamofire

protocol DataChangesRequestFactory {
    func dataChanges(userId: Int, userName: String, password: String,  mobileNumber: String, email: String, sex: String, creditСard: String, completionHandler: @escaping (AFDataResponse<DataChanges>) -> Void)
}

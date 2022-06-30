//
//  AuthRequestFactory.swift
//  OnlineStoreApplication
//
//  Created by Macbook on 22.06.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
 
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
}

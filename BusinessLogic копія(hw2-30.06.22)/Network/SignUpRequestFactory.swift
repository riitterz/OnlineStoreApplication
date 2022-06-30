//
//  SignUpRequestFactory.swift
//  OnlineStoreApplication
//
//  Created by Macbook on 29.06.2022.
//

import Foundation
import Alamofire

protocol SignUpRequestFactory {
    
    func signUp(userId: Int, userName: String, password: String, mobileNomber: String, email: String, sex: String, creditCard: String, completionHandler: @escaping (AFDataResponse<SignUpResult>) -> Void)
}

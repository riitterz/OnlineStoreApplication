//
//  LogoutRequestFactory.swift
//  OnlineStoreApplication
//
//  Created by Macbook on 27.06.2022.
//

import Foundation
import Alamofire

protocol LogoutRequestFactory {
    func logout(userId: Int, completionHandler: @escaping (AFDataResponse<LogoutResult>) -> Void)
}

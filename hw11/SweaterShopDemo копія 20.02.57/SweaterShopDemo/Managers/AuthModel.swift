//
//  AuthModel.swift
//  SweaterShopDemo
//
//  Created by Macbook on 21.08.2022.
//

import Foundation
import FirebaseAuth
import AVFoundation

class AuthModel {
    
    static let shared = AuthModel()
    
    private init() {
        
    }
    
    private let auth = Auth.auth()
    
    var currentUser: User? {
        return auth.currentUser
    }
    
    func signUp(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        
        auth.createUser(withEmail: email, password: password) { result, error in
            if let result = result {
                let userModel = UserModel(id: result.user.uid, name: "", email: "")
                DatabaseManager.shared.setProfile(user: userModel) { resultDB in
                    switch resultDB {
                        
                    case .success(_):
                        completion(.success(result.user))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
                completion(.success(result.user))
            } else if let error = error {
                completion(.failure(error))
            }
        }
    }
    
    func login(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        
        auth.signIn(withEmail: email, password: password) { result, error in
            if let result = result {
                completion(.success(result.user))
            } else if let error = error {
                completion(.failure(error))
            }
        }
    }
}

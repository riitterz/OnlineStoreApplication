//
//  LoginPageModel.swift
//  SweaterShopDemo
//
//  Created by Macbook on 29.07.2022.
//

import SwiftUI

class LoginPageModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    //Register Properties
    @Published var registerUser: Bool = false
    @Published var re_Enter_Password: String = ""
    @Published var showReEnterPassword: Bool = false

    @AppStorage("log_Status") var log_Status: Bool = false
    
    //Login Call...
    func Login() {
        withAnimation {
            log_Status = true
        }
    }
    
    func Register() {
        withAnimation {
            log_Status = true
        }
    }
    
    func ForgotPasswor() {
        
    }
}


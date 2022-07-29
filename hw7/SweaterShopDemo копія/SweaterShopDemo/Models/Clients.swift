//
//  Clients.swift
//  SweaterShopDemo
//
//  Created by Macbook on 14.07.2022.
//

import SwiftUI

 struct Clients: Identifiable {
     let id: String
     let name: String
     let email: String
     let password: String
    
     enum CodingKeys: String, CodingKey {
         case id = "user_id"
         case name = "user_name"
         case email = "user_email"
         case password = "user_password"
     }
 }
 

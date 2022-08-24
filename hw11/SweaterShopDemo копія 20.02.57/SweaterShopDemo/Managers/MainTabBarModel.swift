//
//  MainTabBarModel.swift
//  SweaterShopDemo
//
//  Created by Macbook on 22.08.2022.
//

import Foundation
import FirebaseAuth

class MainTabBarModel: ObservableObject {
    @Published var user: User
  
    init(user: User) {
        self.user = user
    }
}

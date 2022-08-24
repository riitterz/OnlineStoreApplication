//
//  ProfileViewModel.swift
//  SweaterShopDemo
//
//  Created by Macbook on 22.08.2022.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: UserModel
    
    init(profile: UserModel) {
        self.profile = profile
    }
    
    func setProfile() {
        DatabaseManager.shared.setProfile(user: self.profile) { result in
            switch result {
                
            case .success(let user):
                print(user.name)
            case .failure(let error):
                print("ERROR \n \(error.localizedDescription)")
            }
        }
    }
    
    func getProfile() {
        DatabaseManager.shared.getProfile { result in
            switch result {
                
            case .success(let user):
                self.profile = user
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

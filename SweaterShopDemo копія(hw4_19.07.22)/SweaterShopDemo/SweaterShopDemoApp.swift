//
//  SweaterShopDemoApp.swift
//  SweaterShopDemo
//
//  Created by Macbook on 05.07.2022.
//

import SwiftUI
import Firebase

@main
struct SweaterShopDemoApp: App {
    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ConteinerView()
        }
    }
}

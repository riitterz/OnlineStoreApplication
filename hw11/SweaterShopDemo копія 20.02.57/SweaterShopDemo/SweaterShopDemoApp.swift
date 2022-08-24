//
//  SweaterShopDemoApp.swift
//  SweaterShopDemo
//
//  Created by Macbook on 05.07.2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct SweaterShopDemoApp: App {
    
   // @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            if let user = AuthModel.shared.currentUser {
                let viewModel = MainTabBarModel(user: user)
                TabBar(viewModel: viewModel)
            } else {
                GetStarted()
            }
        }
    }
    
    init() {
        FirebaseApp.configure()
        print("OK")
    }
    
//    class AppDelegate: NSObject, UIApplicationDelegate {
//
//        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//
//            FirebaseApp.configure()
//
//            return true
//        }
//    }
}

//
//  Session.swift
//  SweaterShopDemo
//
//  Created by Macbook on 14.07.2022.
//

import Foundation

class Session: ObservableObject {
    static let shared = Session()
    
    @Published var userId = ""
    @Published var isAuthorized: Bool = false
}

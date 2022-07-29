//
//  DataManager.swift
//  SweaterShopDemo
//
//  Created by Macbook on 14.07.2022.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    @Published var clients: [Clients] = []
    
    init() {
        fetchClients()
    }
    
    func fetchClients() {
        clients.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Clients")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["user_id"] as? String ?? ""
                    let userName = data["user_name"] as? String ?? ""
                    let email = data["user_email"] as? String ?? ""
                    let password = data["user_password"] as? String ?? ""
                    
                    let client = Clients(id: id, name: userName, email: email, password: password)
                    self.clients.append(client)
                }
            }
        }
    }
}

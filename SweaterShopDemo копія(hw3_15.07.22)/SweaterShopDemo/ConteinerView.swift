//
//  ConteinerView.swift
//  SweaterShopDemo
//
//  Created by Macbook on 14.07.2022.
//

import SwiftUI

struct ConteinerView: View {
    
    @State private var shouldShowMainView: Bool = false
    @ObservedObject var session = Session.shared
    
    var body: some View {
        NavigationView {
            LoginView()
            NavigationLink(destination: TabBar(), isActive: $session.isAuthorized) {
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ConteinerView()
    }
}

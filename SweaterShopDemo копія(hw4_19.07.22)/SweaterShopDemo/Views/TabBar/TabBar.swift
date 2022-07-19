//
//  TabBar.swift
//  SweaterShopDemo
//
//  Created by Macbook on 15.07.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("")
                }
        }.accentColor(.black)
            .font(.headline)
            .navigationBarHidden(false)
            .navigationBarBackButtonHidden(false)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

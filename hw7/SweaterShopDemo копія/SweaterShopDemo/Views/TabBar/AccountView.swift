//
//  AccountView.swift
//  SweaterShopDemo
//
//  Created by Macbook on 15.07.2022.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
                Image("person1")
                    .resizable()
                    .cornerRadius(50)
                .frame(width: 120, height: 120)
                
                Text("user101010")
                    .font(.title)
                    .bold()
            Spacer()
        }.frame(width: 350, height: 700, alignment: .leading)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

//
//  LoginPage.swift
//  SweaterShopDemo
//
//  Created by Macbook on 29.07.2022.
//

import SwiftUI

struct LoginPage: View {
    @StateObject var loginData: LoginPageModel = LoginPageModel()
    var body: some View {
        
        VStack {
            
            Text("Welcome back")
                .font(.largeTitle)
                .foregroundColor(Color("Color2"))
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: getRect().height / 3.5)
                .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15) {
                    Text("Login")
                        .font(.headline)
                        .frame(minWidth: .infinity, alignment: .leading)
                    
                    
                }.padding(30)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("Color2")
                    .clipShape(CustomCornens(corners: [.topLeft,.topRight], radius: 25))
                    .ignoresSafeArea()
                )
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Color1"))
    }
    @ViewBuilder
    func CustomTextField(icon: String, title: String, hint: String, value: Binding<String>, showPassword: Binding<Bool>) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Label {
                Text(title)
                    
            } icon: {
                Image(systemName: icon)
            }.foregroundColor(Color.black.opacity(0.8))
            
            TextField(hint, text: value)
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

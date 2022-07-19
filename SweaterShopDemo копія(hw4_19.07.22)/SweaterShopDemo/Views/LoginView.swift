//
//  LoginView.swift
//  SweaterShopDemo
//
//  Created by Macbook on 14.07.2022.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    
    var body: some View {
        if userIsLoggedIn {
            TabBar()
        } else {
            content
        }
    }
    
    var content: some View {
        ZStack {
            Color("Color1")
            
            VStack(spacing: 20) {
                Text("Welcome to our Sweater Shop")
                    .fontWeight(.light)
                    .foregroundColor(Color("Color2"))
                    .font(.title)
                    .offset(x: -0, y: -140)
                
                TextField("Email", text: $email)
                    .foregroundColor(Color("Color2"))
                    .textFieldStyle(.plain)

                Rectangle()
                    .frame(width: 360, height: 1)
                    .foregroundColor(Color("Color2"))
               
                SecureField("Password", text: $password)
                    .foregroundColor(Color("Color2"))
                    .textFieldStyle(.plain)
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(Color("Color2"))
                
                NavigationLink(destination: ContentView()) {
                Button {
                    register()
                } label: {
                    Text("Sign up")
                        .foregroundColor(Color("Color2"))
                        .frame(width: 200, height: 40)

                } .padding(.top)
                .offset(y: 100)
                }
                Button {
                    login()
                } label: {
                    Text("Already have an account? Login")
                        .foregroundColor(Color("Color2"))
                        .frame(width: 300, height: 40)
                }.padding(.top)
                    .offset(y: 110)
            }.frame(width: 360)
                .onAppear {
                    Auth.auth().addStateDidChangeListener { auth, user in
                        if user != nil {
                            userIsLoggedIn.toggle()
                        }
                    }
                }
        }.ignoresSafeArea()
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension View {
    func placehoulder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placehoulder: () -> Content) -> some View {
            ZStack(alignment: alignment) {
                placehoulder().opacity(shouldShow ? 1 : 0)
            }
        }
}

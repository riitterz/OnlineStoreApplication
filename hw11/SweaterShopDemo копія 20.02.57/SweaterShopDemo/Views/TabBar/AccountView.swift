//
//  AccountView.swift
//  SweaterShopDemo
//
//  Created by Macbook on 15.07.2022.
//

import SwiftUI

struct AccountView: View {
    @State var isAvaAlertPresented: Bool = false
    @State var isLogOutAlertPresented: Bool = false
    @State var isAuthViewPresented: Bool = false

    @StateObject var viewModel: ProfileViewModel

    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: 17) {
                ZStack(alignment: .bottomTrailing) {
                    Image("person1")
                        .resizable()
                        .cornerRadius(50)
                        .frame(width: 100, height: 100)
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .padding(8)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(50)
                            .onTapGesture {
                                isAvaAlertPresented.toggle()
                            }.confirmationDialog("", isPresented: $isAvaAlertPresented) {
                                Button {
                                    
                                } label: {
                                    Text("From gallery")
                                }
                                Button {
                                    
                                } label: {
                                    Text("Camera")
                                }
                            }
                    }
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    TextField("username", text: $viewModel.profile.name)
                        .font(.title)
                    
                    HStack {
                        Image(systemName: "envelope")
                        TextField("email", text: $viewModel.profile.email)
                            .foregroundColor(Color("Color2"))
                        Text("@gamil.com")
                            .fontWeight(.ultraLight)
                        
                    }.foregroundColor(Color("Color2"))
                }.padding(.bottom,9)
            }
            Spacer()
            Button {
                isLogOutAlertPresented.toggle()
            } label: {
                Text("Log out")
                    .padding()
                    .padding(.horizontal, 25)
                    .background(Color("Color2"))
                    .foregroundColor(Color("Color1"))
                    .cornerRadius(25)
            }.padding()
                .confirmationDialog("Are you sure?", isPresented: $isLogOutAlertPresented) {
                    Button {
                        isAuthViewPresented.toggle()
                    } label: {
                        Text("Yes")
                    }

                }
                .fullScreenCover(isPresented: $isAuthViewPresented, onDismiss: nil) {
                    GetStarted()
                }
        }.onSubmit {
            viewModel.setProfile()
        }.onAppear {
            self.viewModel.getProfile()
        }.frame(width: 350, height: 700, alignment: .leading)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(viewModel: ProfileViewModel(profile: UserModel(id: "", name: "RITTERZ", email: "ritterz")))
    }
}

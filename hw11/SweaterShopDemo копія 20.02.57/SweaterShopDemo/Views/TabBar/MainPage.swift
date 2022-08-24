//
//  ContentView.swift
//  SweaterShopDemo
//
//  Created by Macbook on 05.07.2022.
//

import SwiftUI

struct MainPage: View {
    @StateObject var cartManager = CartManager()
    @Namespace var animation
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(productList, id: \.id) { product in
                            NavigationLink(destination: CertainSweater(product: product)) {
                                ProductCard(product: product)
                                    .environmentObject(cartManager)
                            }
                        }
                    }.padding()
                }
            }.navigationTitle(Text("Sweater Shop"))
                .toolbar {
                    NavigationLink {
                        CartView()
                            .environmentObject(cartManager)
                    } label: {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

    
struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}



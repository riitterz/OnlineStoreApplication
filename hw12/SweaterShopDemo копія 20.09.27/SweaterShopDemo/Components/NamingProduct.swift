//
//  NamingProduct.swift
//  SweaterShopDemo
//
//  Created by Macbook on 12.07.2022.
//

import SwiftUI

struct NamingProduct: View {
    var product: Product
    
    var body: some View {
        VStack(spacing: 5) {
            HStack(alignment: .top) {
                Text(product.name)
                    .frame(minWidth: 0)
                    .frame(height: 50)
                    .padding(10)
                Spacer()
                Text("\(product.price)$")
                    .frame(minWidth: 0)
                    .frame(width: 100, height: 50)
            }.font(.title2)
                .foregroundColor(.black)
        }.padding(.top, 25)
    }
}

struct Naming_Previews: PreviewProvider {
    static var previews: some View {
        NamingProduct(product: productList[1])
    }
}


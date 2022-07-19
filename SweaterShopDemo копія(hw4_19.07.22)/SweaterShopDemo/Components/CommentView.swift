//
//  CommentView.swift
//  SweaterShopDemo
//
//  Created by Macbook on 11.07.2022.
//

import SwiftUI

struct CommentView: View {
    var product: Product

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                NamingProduct(product: product)
                Text("////COMMENT////")
            }
        }.backgroundBlur(radius: 25, opaque: true)
            .background {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(Color("Color1").opacity(0.9))
            }.clipShape(RoundedRectangle(cornerRadius: 44))
            .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color(.black), lineWidth: 1, offsetX: 0, offsetY: 1, blur: 0, blendMode: .overlay, opacity: 1)
            .overlay {
                Divider()
                    .blendMode(.overlay)
                    .background(.black)
                    .frame(maxHeight: .infinity, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 44))
            }.overlay {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.3))
                    .frame(width: 48, height: 5)
                    .frame(height: 20)
                    .frame(maxHeight: .infinity, alignment: .top)
            }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(product: productList[0])
            .background(Color("Color1"))

    }
}

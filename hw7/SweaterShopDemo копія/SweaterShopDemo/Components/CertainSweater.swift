//
//  CertainSweater.swift
//  SweaterShopDemo
//
//  Created by Macbook on 11.07.2022.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.900
    case middle = 0.500
}

struct CertainSweater: View {
    var product: Product
    
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    @State var bottomSheetTranslation: CGFloat = BottomSheetPosition.middle.rawValue
    
    var bottomSheetTranslationProrated: CGFloat {
        (bottomSheetTranslation - bottomSheetPosition.rawValue) / (BottomSheetPosition.top.rawValue - BottomSheetPosition.middle.rawValue)
    }
    
    var body: some View {
   
        GeometryReader { geometry in
            let screenHeight = geometry.size.height + geometry.safeAreaInsets.top + geometry.safeAreaInsets.bottom
            let imageOffset = screenHeight + 36
           
            ZStack(alignment: .bottom) {
                VStack {
                    Image(product.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .scaledToFit()
                        .edgesIgnoringSafeArea(.all)
                        .offset(y: -bottomSheetTranslationProrated * imageOffset)

//                    Image(product.image)
//                        .resizable()
//                        .cornerRadius(20)
//                        .scaledToFit()
//                        .ignoresSafeArea()
//                        .offset(y: -bottomSheetTranslationProrated * imageOffset)
                    Spacer()
                }
                BottomSheetView(position: $bottomSheetPosition) {
                    Text(bottomSheetTranslation.formatted())
                } content: {
                    CommentView(product: product)
                }.onBottomSheetDrag { translation in
                    bottomSheetTranslation = translation / screenHeight
                }
            }
        }
    }
}

struct CertainSweater_Previews: PreviewProvider {
    static var previews: some View {
        CertainSweater(product: productList[7])
            .environmentObject(CartManager())
    }
}

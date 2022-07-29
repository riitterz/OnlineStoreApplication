//
//  GetStarted.swift
//  SweaterShopDemo
//
//  Created by Macbook on 29.07.2022.
//

import SwiftUI

struct GetStarted: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Find your Sweater")
                .fontWeight(.medium)
                .foregroundColor(Color("Color2"))
                .font(.title)
            Image("Sweater")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            Button {
                
            } label: {
                Text("Get started")
//                    .font(.custom(customFont, size: 18))
                    .fontWeight(.semibold)
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .background(Color("Color1"))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                    .foregroundColor(Color("Color2"))
            }.padding(.horizontal, 30)
                .offset(y: getRect().height < 750 ? 20 : 40)
            
            
        }
        .padding()
        .padding(.top, getRect().height < 750 ? 0 : 40)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.white))
    }
}

struct GetStarted_Previews: PreviewProvider {
    static var previews: some View {
        GetStarted()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}

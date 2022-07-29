//
//  AddComment.swift
//  SweaterShopDemo
//
//  Created by Macbook on 20.07.2022.
//

import SwiftUI

struct AddComment: View {
    @State private var comment = ""
    @StateObject var commentManager = CommentManager()
    var comments: Comment
    
    var body: some View {
        
       // ZStack(alignment: .trailing) {
        HStack {
            TextField("Comment...", text: $comment)
//                    .foregroundColor(Color("Color2"))
                .foregroundColor(Color(.black))

                    .textFieldStyle(.plain)
                    .padding(5)
                    .frame(width: 350, height: 50)
            Spacer()
            Button {
                commentManager.addComment(comment: comments)
            } label: {
                Image(systemName: "arrowshape.zigzag.right")
                    .padding(5)
                    .foregroundColor(Color("Color2"))
            }.frame(width: 15, height: 10, alignment: .trailing)
                .padding(10)
            
       } .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color(.black), lineWidth: 1, offsetX: 1, offsetY: 1, blur: 1, blendMode: .overlay, opacity: 1)
            .frame(width: 350)
        
        
    }
}

struct AddComment_Previews: PreviewProvider {
    static var previews: some View {
        AddComment(comments: commentList[0])
    }
}

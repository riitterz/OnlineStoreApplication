//
//  CommentCard.swift
//  SweaterShopDemo
//
//  Created by Macbook on 20.07.2022.
//

import SwiftUI

struct CommentCard: View {
    var comment: Comment
    @StateObject var commentManager = CommentManager()
    @State var showActionSheet = false
    @State var isSwiped = false
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Action Sheet's Title"), buttons: [
            .default(Text("Delete comment")),
           .cancel()
        ])
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                HStack(spacing: 5) {
                    VStack(alignment: .leading) {
                        Text(comment.user)
                            .bold()
                        
                        Text(comment.text)
                            .font(.footnote)
                    }
                    
                    Spacer()
                    Button {
                        commentManager.ellipsisComment(comment: comment)
                        self.showActionSheet.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(Color(.black))
                    }
                }       // .actionSheet(isPresented: $showActionSheet, content: { self.actionSheet })
           

            }.padding()
                .frame(width: 350, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                .swipeActions {
                    Button {
                        print("Delete")
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
            
        }
        .frame(width: 350)
        .shadow(radius: 3)
    }
}


struct CommentCard_Previews: PreviewProvider {
    static var previews: some View {
        CommentCard(comment: commentList[0])
    }
}

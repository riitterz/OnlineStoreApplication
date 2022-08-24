//
//  CommentList.swift
//  SweaterShopDemo
//
//  Created by Macbook on 20.07.2022.
//

import SwiftUI

struct CommentList: View {
    var comment: Comment
    @StateObject var commentManager = CommentManager()
    var columns = [GridItem(.flexible(), spacing: 15)]

    var body: some View {
            ZStack(alignment: .topTrailing) {
                ZStack(alignment: .bottom) {
                    VStack(spacing: 15) {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(commentList, id: \.id) { comment in
                                CommentCard(comment: comment)
                            }
                        }
                    }
                }
            }
            AddComment(commentManager: commentManager, comments: comment)
        }
}

struct CommentList_Previews: PreviewProvider {
    static var previews: some View {
        CommentList(comment: commentList[0])
            .environmentObject(CommentManager())
    }
}

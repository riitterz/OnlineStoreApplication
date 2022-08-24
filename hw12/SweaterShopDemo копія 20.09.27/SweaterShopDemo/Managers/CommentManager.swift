//
//  CommentManager.swift
//  SweaterShopDemo
//
//  Created by Macbook on 20.07.2022.
//

import Foundation

class CommentManager: ObservableObject {
    @Published private(set) var comments: [Comment] = []
    
    func addComment(comment: Comment) {
        comments.append(comment)
    }
    
    func removeComment(comment: Product) {
        comments = comments.filter { $0.id != comment.id }
    }
    
    func ellipsisComment(comment: Comment) {
        
    }
//    func deleteComment(comment: Comment) {
//        comments.removeAll() { (comment) -> Bool in
//            return self.comment.id == comment.id
//        }
//    }
}

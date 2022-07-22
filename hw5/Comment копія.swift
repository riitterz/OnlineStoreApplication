//
//  Comment.swift
//  SweaterShopDemo
//
//  Created by Macbook on 20.07.2022.
//

import Foundation

struct Comment: Identifiable {
    var id = UUID()
    var user: String
    var text: String
}

var commentList = [Comment(user: "user1", text: "I'm in love with that sweater"),
                   Comment(user: "user2", text: "I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater I'm in love with that sweater"),
                   Comment(user: "user3", text: "I'm in love with that sweater"),
                   Comment(user: "user4", text: "I'm in love with that sweater"),
                   Comment(user: "user5", text: "I'm in love with that sweater"),
                   Comment(user: "user6", text: "I'm in love with that sweater"),
                   Comment(user: "user7", text: "I'm in love with that sweater"),
                   Comment(user: "user8", text: "I'm in love with that sweater")]

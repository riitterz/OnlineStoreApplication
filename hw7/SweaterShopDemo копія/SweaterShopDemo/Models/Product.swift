//
//  Product.swift
//  SweaterShopDemo
//
//  Created by Macbook on 05.07.2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Blue grandfather sweater", image: "sweater1", price: 46),
                   Product(name: "Caramel sweater", image: "sweater2", price: 52),
                   Product(name: "Dirty snow sweater", image: "sweater3", price: 49),
                   Product(name: "Pony sweater", image: "sweater4", price: 40),
                   Product(name: "Green grandfather sweater", image: "sweater5", price: 46),
                   Product(name: "Beige sweater", image: "sweater6", price: 42),
                   Product(name: "Spruce sweater", image: "sweater7", price: 45),
                   Product(name: "Ocean sweater", image: "sweater8", price: 35)]



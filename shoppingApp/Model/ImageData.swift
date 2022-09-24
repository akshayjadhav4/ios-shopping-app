//
//  ImageData.swift
//  shoppingApp
//
//  Created by Akshay Anil Jadhav on 24/09/22.
//

import Foundation


struct FruitModel {
    var id: Int
    var tilte: FruitTilte
    var image: String
    var price: String
    var color: String
}
enum FruitTilte: String {
    case apple, apricot, avocado, banana, blackberry, cherry, dragonfruit, fig,
    grapes, kiwi, lemon, mango, muskmelon, orange, papaya, pear, pineapple, plum, raspberry,
    strawberry, watermelon
}

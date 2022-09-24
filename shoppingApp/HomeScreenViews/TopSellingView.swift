//
//  TopSellingView.swift
//  shoppingApp
//
//  Created by Akshay Anil Jadhav on 24/09/22.
//

import SwiftUI

struct TopSellingView: View {
    let fruits: [FruitModel] = [
        .init(id: 0, title: .apple, image: "apple", price: "$1.99 each", color: "LightPink"),
        .init(id: 1, title: .apricot, image: "apricot", price: "$2.04 each", color: "LightBlue"),
        .init(id: 2, title: .avocado, image: "avocado", price: "$1.04 each", color: "Yellow"),
        .init(id: 3, title: .banana, image: "banana", price: "$2.06 each", color: "Violet"),
        .init(id: 4, title: .cherry, image: "cherry", price: "$3.00 each", color: "Purpal"),
        .init(id: 5, title: .dragonfruit, image: "dragonfruit", price: "$1.04 each", color: "Green"),
        .init(id: 6, title: .fig, image: "fig", price: "$2.00 each", color: "LightPink"),
        .init(id: 7, title: .orange, image: "orange", price: "$1.00 each", color: "LightBlue"),
        .init(id: 8, title: .grapes, image: "grapes", price: "$2.54 each", color: "Yellow"),
        .init(id: 9, title: .raspberry, image: "raspberry", price: "$3.04 each", color: "Violet"),
        .init(id: 10, title: .papaya, image: "papaya", price: "$1.04 each", color: "Purpal"),
        .init(id: 11, title: .kiwi, image: "kiwi", price: "$2.78 each", color: "Green"),
        .init(id: 12, title: .lemon, image: "lemon", price: "$2.04 each", color: "LightPink"),
        .init(id: 13, title: .blackberry, image: "blackberry", price: "$2.04 each", color: "LightBlue"),
        .init(id: 14, title: .mango, image: "mango", price: "1.00 each", color: "Yellow"),
        .init(id: 15, title: .muskmelon, image: "muskmelon", price: "$1.56 each", color: "Violet"),
        .init(id: 16, title: .pear, image: "pear", price: "$2.04 each", color: "Purpal"),
        .init(id: 17, title: .pineapple, image: "pineapple", price: "$2.84 each", color: "Green"),
        .init(id: 18, title: .plum, image: "plum", price: "$1.15 each", color: "LightPink"),
        .init(id: 19, title: .strawberry, image: "strawberry", price: "$2.35 each", color: "LightBlue"),
        .init(id: 20, title: .watermelon, image: "watermelon", price: "$1.64 each", color: "Yellow")
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(fruits, id: \.id) { fruit in
                    NavigationLink(destination: DetailsView(fruit: fruit.title)) {
                        FruitCardView(fruit: fruit)
                    }
                }
            }
        }
    }
}

struct TopSellingView_Previews: PreviewProvider {
    static var previews: some View {
        TopSellingView()
    }
}

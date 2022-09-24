//
//  FruitCardView.swift
//  shoppingApp
//
//  Created by Akshay Anil Jadhav on 24/09/22.
//

import SwiftUI

let image: FruitModel = FruitModel(id: 1, tilte: .apple, image: "apple", price: "3.44$", color: "LightPink")

struct FruitCardView: View {
    let fruit: FruitModel
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.tilte.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruit.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruit.color))
            .cornerRadius(30)
            .padding()
            .shadow(radius: 3, x: 10, y: 10)
            
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 110)
                .offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: image)
    }
}

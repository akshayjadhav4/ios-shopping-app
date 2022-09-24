//
//  DetailsView.swift
//  shoppingApp
//
//  Created by Akshay Anil Jadhav on 24/09/22.
//

import SwiftUI

struct DetailsView: View {
    @State var fruit: FruitTilte
    var body: some View {
        Text("\(fruit.rawValue)")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fruit: .apple)
    }
}

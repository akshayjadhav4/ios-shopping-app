//
//  DetailsView.swift
//  shoppingApp
//
//  Created by Akshay Anil Jadhav on 24/09/22.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
  
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
    
}

struct DetailsView: View {
    @State var fruit: FruitTilte
    var body: some View {
            VStack(alignment: .leading, spacing: 25) {
                Image("bg").resizable()
                    .edgesIgnoringSafeArea(.top)
                    .clipShape(RoundedCornerShape.init(corners: [.bottomLeft,.bottomRight], radius: 50))
                    .frame(width: .infinity, height: .infinity, alignment: .top)
                    
                Spacer()
            }
            
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fruit: .apple)
    }
}

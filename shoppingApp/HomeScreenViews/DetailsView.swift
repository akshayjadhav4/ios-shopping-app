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


struct Counter: View {
    @State var quantity: Int = 0
    
    var body: some View {
        HStack(spacing:25) {
            Button {
                quantity += 1
            } label: {
                Image(systemName: "plus")
            }
            Text("\(quantity)")
                .font(.system(.title))
            Button {
                if quantity != 0 {
                    quantity -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
        }
        .foregroundColor(.black)
        .frame(width: 150, height: 50)
        .background(Color("bgColor")).opacity(0.5)
        .cornerRadius(10)
        .padding(.horizontal)
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
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .overlay(
                        Image("\(fruit.rawValue)")
                            .resizable()
                            .frame(width: 250, height: 250, alignment: .center)
                            .shadow(color: .gray, radius: 5, x: 5, y: 5)
                            .offset(y:50)
                    )
                    
                Spacer()
                Text("\(fruit.rawValue) - Medium")
                    .fontWeight(.medium)
                    .font(.system(.title))
                    .padding(.horizontal)
                    .textCase(.uppercase)
                Text("Each (500-700)")
                    .padding(.horizontal)
                Text("The apple is a deciduous tree, generally standing 2 to 4.5 m (6 to 15 ft) tall in cultivation and up to 9 m (30 ft) in the wild. When cultivated, the size, shape and branch density are determined by rootstock selection and trimming method.")
                    .fontWeight(.regular)
                    .font(.system(.body))
                    .multilineTextAlignment(.leading)
                    .lineLimit(6)
                    .padding(.horizontal)
                
                HStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color("bgColor"))
                        .opacity(0.3)
                        .overlay(
                            Image(systemName: "hourglass")
                        ).font(.system(size: 40))
                        .frame(width: 55, height: 55)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Delivery Time")
                            .font(.system(size: 20))
                        Text("25-30 Min")
                    }
                }.padding(.horizontal)
                
                HStack {
                    Text("$1.99")
                        .font(.system(.title))
                        .fontWeight(.medium)
                    Spacer()
                    Counter()
                }.padding(.horizontal)
                
                Image("bg").resizable()
                    .frame(width: 350, height: 50, alignment: .center)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .overlay(
                        Text("Add to cart")
                            .font(.system(.title3))
                            .fontWeight(.medium)
                    )
                    .padding(.horizontal)
                    
            }
            
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fruit: .apple)
    }
}

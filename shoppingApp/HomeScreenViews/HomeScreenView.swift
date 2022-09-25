//
//  HomeScreenView.swift
//  shoppingApp
//
//  Created by Akshay Anil Jadhav on 24/09/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10){
                HStack {
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                }.font(.system(.title3))
                Text("Hey")
                    .font(.system(.title))
                    .fontWeight(.bold)
                Text("Find fresh fruits you want")
                RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.3))
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                            Text("Search fresh fruits")
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }.padding(.horizontal)
                    ).frame(width: 350, height: 50,alignment: .center)
                Text("Top Selling")
                    .font(.system(.title))
                    .fontWeight(.bold)
                TopSellingView()
                Text("Near You")
                    .font(.system(.title))
                    .fontWeight(.bold)
                NearYouView()
                Spacer()
            }.padding()
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}

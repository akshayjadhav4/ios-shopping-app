//
//  OnBoardingScreenView.swift
//  shoppingApp
//
//  Created by Akshay Anil Jadhav on 24/09/22.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView {
            VStack(spacing:30) {
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order Your Favourite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black)
                        .opacity(0.7)
                }
                Spacer()
                NavigationLink(destination: HomeScreenView()){
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("Green"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(alignment: .center, spacing:10) {
                                Text("Next")
                                    .font(.system(.title))
                                    .fontWeight(.bold)
                                 Image(systemName: "chevron.right")
                            }.foregroundColor(.black)
                        )
                }
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}

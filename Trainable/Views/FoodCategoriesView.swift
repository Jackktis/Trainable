//
//  FoodCategoriesView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

struct FoodCategoriesView: View {
    var body: some View {
        ScrollView{
            VStack{
                ZStack {
                    Image("Veggie Dishes").centerCropped()
                            .clipped()
                            .frame(maxWidth: .infinity)
                            .frame(height: 165)
                            .cornerRadius(8)
                    Text("Veggie").textModifier()
                }.accessibilityLabel("Veggie Dishes")
                
                ZStack {
                    Image("Meat Dishes").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Meat").textModifier()
                }.accessibilityLabel("Meat Dishes")
                
                ZStack {
                    Image("Protein").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Proteins").textModifier()
                }.accessibilityLabel("Protein")
                
                ZStack {
                    Image("Snacks").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Snacks").textModifier()
                }.accessibilityLabel("Snacks")
                
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            .shadow(color: .black, radius: 2, x: 0, y: 2)
            
        }.navigationTitle("Food Categories")
        // for at sætte light shceme only
        .preferredColorScheme(.light)
    }
}

struct FoodCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoriesView()
    }
}

//
//  ContentView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

struct WorkOutCategoriesView: View {
    var body: some View {
        ScrollView{
            //Categories ----------------------------------------
            VStack(alignment: .center){
                NavigationLink(destination: CategoriesView()){
                    ZStack {
                        Image("Strength").centerCropped()
                            .clipped()
                            .frame(maxWidth: .infinity)
                            .frame(height: 165)
                            .cornerRadius(8)
                        Text("Strength").textModifier()
                    }.accessibilityLabel("Strength")
                }
                ZStack {
                    Image("Endurance").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Endurance").textModifier()
                }.accessibilityLabel("Endurance")
                
                ZStack {
                    Image("Flexibility").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Flexibility").textModifier()
                }.accessibilityLabel("Flexibility")
                
                ZStack {
                    Image("Balance").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Balance")
                        .textModifier()
                }.accessibilityLabel("Balance")
                //Categories  ends -----------------------------------
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            .shadow(color: .black, radius: 2, x: 0, y: 2)
        }.navigationTitle("WorkOuts")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WorkOutCategoriesView()
    }
}

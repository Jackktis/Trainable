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
                NavigationLink(destination: BodyRegionsListView()){
                    ZStack {
                        Image("Strength").centerCropped()
                            .clipped()
                            .frame(maxWidth: .infinity)
                            .frame(height: 165)
                            .cornerRadius(8)
                        Text("Strength").textWorkOutModifier()
                    }.accessibilityLabel("Strength")
                }
                ZStack {
                    Image("Endurance").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Endurance").textWorkOutModifier()
                }.accessibilityLabel("Endurance")
                
                ZStack {
                    Image("Flexibility").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Flexibility").textWorkOutModifier()
                }.accessibilityLabel("Flexibility")
                
                ZStack {
                    Image("Balance").centerCropped()
                        .clipped()
                        .frame(maxWidth: .infinity)
                        .frame(height: 165)
                        .cornerRadius(8)
                    Text("Balance")
                        .textWorkOutModifier()
                }.accessibilityLabel("Balance")
                //Categories  ends -----------------------------------
            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            .shadow(color: .black, radius: 2, x: 0, y: 2)
        }.navigationTitle("WorkOuts")
        // for at sætte light shceme only
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WorkOutCategoriesView()
    }
}

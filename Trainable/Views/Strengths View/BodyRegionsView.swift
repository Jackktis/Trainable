//
//  StrengthCategoriesView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 18/02/2022.
//

import SwiftUI

struct BodyRegionsView: View {
    @State var bodyRegions = Bundle.main.decode([StrengthCategory].self, from: "StrengthBodyRegions.json")
    
    var ButtonsInCol: [GridItem]{
        Array(repeating: .init(.flexible()), count:2)
    }
    
    var body: some View {
        ScrollView(.vertical){
            Section(header: Text("Front").TitleText()){
                        LazyVGrid(columns: ButtonsInCol, spacing: 20){
                            ForEach($bodyRegions, id: \.id){ $category in
                            if(category.title == "Front"){
                                NavigationLink(destination: ExercisesList()){
                                bodyRegions_ButtonView(category: category)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                            }
                        }
                    }
                }
            }.padding([.horizontal, .bottom])
            Spacer()
            Section(header: Text("Back")
                        .fontWeight(.bold)
                        .font(.system(size:30))){
                        LazyVGrid(columns: ButtonsInCol, spacing: 20){
                            ForEach($bodyRegions, id: \.id){ $category in
                            if(category.title == "Back"){
                                NavigationLink(destination: ExercisesList()){
                                bodyRegions_ButtonView(category: category)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                            }
                        }
                    }
                }
            }.padding([.horizontal, .bottom])
            
            Section(header: Text("Legs")
                        .fontWeight(.bold)
                        .font(.system(size:30))){
                        LazyVGrid(columns: ButtonsInCol, spacing: 20){
                            ForEach($bodyRegions, id: \.id){ $category in
                            if(category.title == "Legs"){
                                NavigationLink(destination: ExercisesList()){
                                bodyRegions_ButtonView(category: category)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                            }
                        }
                    }
                }
            }.padding(.horizontal)
        }
        .navigationTitle("Strength Body regions")
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        BodyRegionsView()
            .previewInterfaceOrientation(.portrait)
    }
}

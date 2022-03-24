//
//  StrengthCategoriesView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 18/02/2022.
//

import SwiftUI

struct BodyRegionsListView: View {
    var bodyRegions = Bundle.main.decode([StrengthCategoryModel].self, from: "StrengthBodyRegions.json")
    
    var ButtonsInCol: [GridItem]{
        Array(repeating: .init(.flexible()), count:2)
    }
    
    var body: some View {
        ScrollView(.vertical){
            Section(header:
                        HStack(){
                    Text("Front")
                        .TitleText()
                    Spacer()
                }){
                    LazyVGrid(columns: ButtonsInCol, spacing: 20){
                        ForEach(bodyRegions, id: \.id){ category in
                        if(category.title == "Front"){
                            NavigationLink(destination: ExercisesListView(bodyRegion: category.bodyRegion)){
                            bodyRegions_ButtonView(category: category)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            }
                        }
                    }
                }
            }.padding([.horizontal, .bottom])
            Section(header:
                        HStack(){
                    Text("Back")
                        .TitleText()
                    Spacer()
                }){
                    LazyVGrid(columns: ButtonsInCol, spacing: 20){
                        ForEach(bodyRegions, id: \.id){ category in
                        if(category.title == "Back"){
                            NavigationLink(destination: ExercisesListView(bodyRegion: category.bodyRegion)){
                            bodyRegions_ButtonView(category: category)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            }
                        }
                    }
                }
            }.padding([.horizontal, .bottom])
            
            Section(header:
                        HStack(){
                    Text("Legs")
                        .TitleText()
                    Spacer()
            }){
                    LazyVGrid(columns: ButtonsInCol, spacing: 20){
                        ForEach(bodyRegions, id: \.id){ category in
                        if(category.title == "Legs"){
                            NavigationLink(destination: ExercisesListView(bodyRegion: category.bodyRegion)){
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
        BodyRegionsListView()
            .previewInterfaceOrientation(.portrait)
    }
}

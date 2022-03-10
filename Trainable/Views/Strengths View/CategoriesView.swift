//
//  StrengthCategoriesView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 18/02/2022.
//

import SwiftUI

struct CategoriesView: View {
    let bodyRegions = [StrengthCategories.allCategories]
    
    var body: some View {
        ScrollView{
            List {
                //$for sagt hver elemenent i StrengthCategories vil vi lave et view på
                Section(header: Text("Front")) {
                    List {
                        ForEach(bodyRegions) { bodyRegion in
                            NavigationLink(destination: bodyRegions_ButtonView(bodyRegion: bodyRegion)) {
                                ExercisesView()
                            }
                        }
                    }
                }.padding()
            }.navigationTitle("Body Parts")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}

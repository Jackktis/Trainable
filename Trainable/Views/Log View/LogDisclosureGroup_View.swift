//
//  LogDisclouserList_View.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 30/03/2022.
//

import SwiftUI

struct LogDisclosureGroup_View: View {
    var exercises = Bundle.main.decode([ExerciseModel].self, from: "WorkOutExercises.json")
    var bodyRegions = Bundle.main.decode([StrengthCategoryModel].self, from: "StrengthBodyRegions.json")
    var title: String
    
    var body: some View {
        Section(header:
                    HStack(){
                Text(title)
                    .TitleText()
                Spacer()
            }){
                ForEach(bodyRegions, id: \.id){ bodyregion in
                    if(bodyregion.title == title){
                        DisclosureGroup(
                            content: {
                                ForEach(exercises, id: \.id){ exercise in
                                    if(exercise.bodyRegion == bodyregion.bodyRegion ){
                                        NavigationLink(destination: Exercise_DetailView(exercise: exercise, colorTitleDetail: bodyregion.colorIdentity)){
                                            Log_detailView(exercise: exercise)
                                                .foregroundColor(Color.black)
                                        }
                                    }
                                }.border(width: 1, edges: [.top], color: Color("Oxford Blue"))
                            },
                            label: {
                                Text(bodyregion.bodyRegion)
                                    .bold()
                                    .foregroundColor(Color.black)
                                    .padding()
                            }
                        ).padding()
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color(bodyregion.colorIdentity)))
                    }
                }
        }
            
    }
}

struct LogDisclouserList_View_Previews: PreviewProvider {
    static var previews: some View {
        let title:String = "Back"
        LogDisclosureGroup_View(title: title)
    }
}

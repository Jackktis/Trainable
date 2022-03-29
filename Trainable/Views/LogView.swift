//
//  LogView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

struct LogView: View {
    var exercises = Bundle.main.decode([ExerciseModel].self, from: "WorkOutExercises.json")
    var bodyRegions = Bundle.main.decode([StrengthCategoryModel].self, from: "StrengthBodyRegions.json")
    
    var body: some View {
        ScrollView{
                ForEach(bodyRegions, id: \.id){ bodyregion in
                        DisclosureGroup(
                            content: {
                                ForEach(exercises, id: \.id){ exercise in
                                    if(exercise.bodyRegion == bodyregion.bodyRegion ){
                                        NavigationLink(destination: Exercise_DetailView(exercise: exercise)){
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
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("Aero Blue")))
                    
                
                }.padding()
            }.navigationTitle("Exercises Log")
        }
    }

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}

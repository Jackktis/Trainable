//
//  ExercisesView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 01/03/2022.
//

import SwiftUI

struct ExercisesListView: View {
    //@EnvironmentObject var exercise: ExerciseModel
    @State var exercises = Bundle.main.decode([ExerciseModel].self, from: "WorkOutExercises.json")
    let bodyRegion: String
    var body: some View {
            List{
                ForEach($exercises, id: \.id){ $exercises in
                    if(exercises.bodyRegion == bodyRegion){
                        NavigationLink(destination: Exercise_DetailView(exercise: $exercises)){
                        ExerciseList_ButtonView(exercises: exercises)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                        }
                        .navigationTitle(bodyRegion + " exercises")
                        .listRowSeparator(.hidden)
                        
                    }
                }.padding(.bottom,2)
            }
            .listStyle(.plain)
        }
    }

struct ExercisesList_Previews: PreviewProvider {
    static var previews: some View {
        let bodyregionPreview: String = "Delts & Shoulders"
        ExercisesListView(bodyRegion: bodyregionPreview)
    }
}

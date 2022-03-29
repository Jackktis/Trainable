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
                    DisclosureGroup(bodyregion.bodyRegion) {
                        ForEach(exercises, id: \.id){ exercise in
                            if(exercise.bodyRegion == bodyregion.bodyRegion ){
                                Text(exercise.exercisesName)
                            }
                    }
                }
            }.padding()
        }
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}

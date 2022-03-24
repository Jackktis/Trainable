//
//  ExerciseDetail.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 01/03/2022.
//

import SwiftUI

struct Exercise_DetailView: View {
    @Binding var exercise: ExerciseModel
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading){
                HStack{
                    Text("Maximum weight:")
                    TextField("Enter Max weight", text: $exercise.maxWeight)
                }
            }
        }
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        Exercise_DetailView(exercise: .constant(ExerciseModel.sampleData[0]))
    }
}

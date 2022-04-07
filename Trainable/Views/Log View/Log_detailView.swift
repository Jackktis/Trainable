//
//  Log_detailView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 29/03/2022.
//

import SwiftUI

struct Log_detailView: View {
    @EnvironmentObject var exerciseNotes: Notes
    var exercise: ExerciseModel
    var body: some View {
        VStack(alignment: .leading) {
            Text(exercise.exercisesName)
                .accessibilityAddTraits(.isHeader)
                .font(.headline)
            Spacer()
            HStack {
                Text("max weight: \(exerciseNotes.getMaxWeight(exerciseId: exercise.id))")
                Spacer()
                Text("max Repetiontion: \(exerciseNotes.getMaxRepetitions(exerciseId: exercise.id))")
            }
            .font(.caption)
        }
        .padding()
    }
}

//struct Log_detailView_Previews: PreviewProvider {
//    static var previews: some View {
//        Log_detailView(exercise: ExerciseModel.sampleData[0])
//            .background(Color("Aero Blue"))
//            .previewLayout(.fixed(width: 400, height: 60))
//    }
//}

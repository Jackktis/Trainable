//
//  ExerciseDetail.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 01/03/2022.
//

import SwiftUI

struct Exercise_DetailView: View {
    var exercise: ExerciseModel
    @State private var maxWeight: Int = 0
    @State private var MaxRep: Int = 0
    
    
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center){
                AsyncImage(url: URL(string: exercise.imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                //make the image flexible
                .frame(minWidth: 0, maxWidth: .infinity,minHeight:300, maxHeight: 300 )
                .shadow(color: .black, radius: 2, x: 0, y: 2)
            }.padding()
            VStack(alignment: .leading){
                HStack{
                    Text("Maximum weight:")
                    Spacer()
                    TextField("Enter Max weight", value:$maxWeight, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 150)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                }
                HStack{
                    Text("Maximum repetitions:")
                    Spacer()
                    TextField("Enter Max repetitions", value:$MaxRep, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 150)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                }
                
                DisclosureGroup("Information") {
                    Text(exercise.description)
                }
            }.padding([.leading, .trailing], 20)
        }.navigationTitle(exercise.exercisesName)
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    var exercise: ExerciseModel
    static var previews: some View {
        Exercise_DetailView(exercise: ExerciseModel.sampleData[0])
    }
}

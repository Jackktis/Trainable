//
//  ExerciseDetail.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 01/03/2022.
//

import SwiftUI
//https://github.com/fermoya/SwiftUIPager
import SwiftUIPager
import AVKit

struct Exercise_DetailView: View {
    var exercise: ExerciseModel
    
    @State private var maxWeight: Int = 0
    @State private var MaxRep: Int = 0
    @StateObject var page: Page = .first()
    var items = Array(0..<2)
    
    var body: some View {
        
        ScrollView(.vertical){
           
        //-------------------------------------- Pager ----------------------------------------
        Pager(page: page,
              data: items,
              id: \.self,
              content: { index in
            
            YTPlayer_View(exerciseUrl: exercise.videoUrl)
            AsyncImage_view(exercisesImageUrl: exercise.imageUrl)
            }
        ).frame(minWidth: 0, maxWidth: .infinity, minHeight: 300, maxHeight: 300, alignment: .center)
            .shadow(color: .black, radius: 2, x: 0, y: 2)
            
        //--------------------------------- After Pager ----------------------------------------
    
            
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
                
                VStack(alignment: .leading) {
                                DisclosureGroup(
                                    content: {
                                        Text(exercise.description)
                                    },
                                    label: {
                                        Text("information")
                                            .bold()
                                            .foregroundColor(Color.black)
                                            
                                    }
                                ).padding()
                }.overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("Pewter Blue"), lineWidth: 2))
                    

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

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
    @EnvironmentObject var exerciseNotes: Notes
    @State private var maxWeight: Int = 0
    @State private var maxRep: Int = 0
    @StateObject var page: Page = .first()
    var items = Array(0..<2)
    var colorTitleDetail: String
    var body: some View {
        
        // https://github.com/fermoya/SwiftUIPager
        ScrollView(.vertical){
            // Pager package
                Pager(page: page,
                      data: items,
                      id: \.self,
                      content: { index in
                    
                    YTPlayer_View(exerciseUrl: exercise.videoUrl).tag(2)
                    AsyncImage_view(exercisesImageUrl: exercise.imageUrl).tag(1)
                    }
                ).frame(minWidth: 0, maxWidth: .infinity, minHeight: 300, maxHeight: 300, alignment: .center)
                    .background(Color.black)
            
            
        //------------------------------------- Buttons ----------------------------------------
            HStack{
                Button(action: {page.update(.moveToFirst)}) {
                    
                    Text("Image")
                        .bold()
                        .foregroundColor(.black)
                        .offset(y:5)
                        .frame( maxWidth: .infinity,maxHeight: 20)
                }.padding(.bottom)
                    .frame(maxWidth: .infinity)
                    .border(width: 1, edges: [.bottom,.trailing], color: Color("Oxford Blue"))
                    .background(Color(colorTitleDetail))
                
            
                
                Button(action: {page.update(.moveToLast)}) {
                    Text("Video")
                        .bold()
                        .foregroundColor(.black)
                        .offset(y:5)
                        .frame( maxWidth: .infinity,maxHeight: 20)
                }.padding(.bottom)
                    .frame( maxWidth: .infinity)
                .border(width: 1, edges: [.bottom,.leading], color: Color("Oxford Blue"))
                .background(Color(colorTitleDetail))
                
                
                

            }.offset(y:-8)
                .padding(.bottom, 20)
            
            
            //------------------------------ After Buttons ---------------------------------------
    
            
            VStack(alignment: .leading){
                HStack{
                    Text("Maximum weight:")
                    Spacer()
                    TextField("Enter Max weight", value:$maxWeight, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 150)
                        .background(.thinMaterial)
                        .background(Color(colorTitleDetail))
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .onSubmit {
                            exerciseNotes.addNote(note: Note.init(id: exercise.id, maxWeight: maxWeight, maxRepetition: maxRep))
                        }.accessibilityLabel("Weight input")
                    
                }
                HStack{
                    Text("Maximum repetitions:")
                    Spacer()
                    TextField("Enter Max repetitions", value:$maxRep, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 150)
                        .textFieldStyle(.roundedBorder)
                        .background(.thinMaterial)
                        .background(Color(colorTitleDetail))
                        .multilineTextAlignment(.center)
                        .onSubmit {
                            exerciseNotes.addNote(note: Note.init(id: exercise.id, maxWeight: maxWeight, maxRepetition: maxRep))
                        }.accessibilityLabel("Weight repetitions")
                }.padding(.bottom, 20)
                
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
                }
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("Oxford Blue"), lineWidth: 2))
                .background(RoundedRectangle(cornerRadius: 20).fill(Color(colorTitleDetail)))
                
                    

            }.padding([.leading, .trailing], 20)
        }.background(.thinMaterial)
            .background(Color(colorTitleDetail))
        .navigationTitle(exercise.exercisesName)
        .onAppear(){
            maxWeight = exerciseNotes.getMaxWeight(exerciseId: exercise.id)
            maxRep = exerciseNotes.getMaxRepetitions(exerciseId: exercise.id)
        }
        }
    }
//
//struct ExerciseDetail_Previews: PreviewProvider {
//    var exercise: ExerciseModel
//    static var previews: some View {
//        Exercise_DetailView(exercise: ExerciseModel.sampleData[0], colorTitleDetail: "Peach")
//    }
//}

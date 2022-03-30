//
//  ExerciseList_ButtonView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 20/03/2022.
//

import SwiftUI

struct ExerciseList_ButtonView: View {
    var exercises: ExerciseModel
    var colorTitle: String
    var body: some View {
        ZStack(alignment: .bottom){
            AsyncImage(url: URL(string: exercises.imageUrl)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            //make the image flexible
            .frame(minWidth: 0, maxWidth: .infinity,minHeight:300, maxHeight: 300 )
            VStack{
                Text(exercises.exercisesName)
                    .BodyRegionTextModifier()
                    .font(.system(size:20))
                    .frame(maxWidth: .infinity,maxHeight: 30, alignment: .center)
                
            }
            .padding()
            .background(Color(colorTitle))
            
            
        }
        .background(.thickMaterial)
        .mask(RoundedRectangle(cornerRadius: 16))
        .padding(.bottom,8)
        
    }
    
    
    struct ExerciseList_ButtonView_Previews: PreviewProvider {
        static let exercise = ExerciseModel(id: "1", bodyRegion: "Delts & Shoulders", exercisesName: "Arnold Press (Anterior)", imageUrl: "https://s35247.pcdn.co/wp-content/uploads/2018/09/3-2-800x600.png", videoUrl: "https://www.youtube.com/watch?v=mXRhpXwW-gs", description: " ")
        static var previews: some View {
            ExerciseList_ButtonView(exercises: exercise, colorTitle: "Peach")
               }
    }
}

//
//  ExerciseModel.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 10/03/2022.
//

import Foundation

struct ExerciseModel: Identifiable{
    let id: String
    var bodyRegion: String
    var exercisesName: String
    var imageUrl: String
    var videoUrl: String
    var description: String
    
    
    init(id: String, bodyRegion:String, exercisesName: String,
         imageUrl: String, videoUrl: String, description: String){
        self.id = id
        self.bodyRegion = bodyRegion
        self.exercisesName = exercisesName
        self.imageUrl = imageUrl
        self.videoUrl = videoUrl
        self.description = description
        }
}

extension ExerciseModel: Codable{}

extension ExerciseModel {
    static let sampleData: [ExerciseModel] =
    [
        ExerciseModel(id: "1", bodyRegion: "Delts & Shoulders", exercisesName: "Arnold Press (Anterior)", imageUrl: "https://s35247.pcdn.co/wp-content/uploads/2018/09/3-2-800x600.png", videoUrl: "https://www.youtube.com/watch?v=mXRhpXwW-gs", description: " 1. Grab your dumbbells. \n\n 2. Take a seat for efficiency, preferably on the workout bench. \n\n 3. Place the dumbbells on your thighs as you sit. \n\n 4. Initial position: Keep your back straight and lift the weights just above your shoulder in front of you ( palm facing towards you.) \n\n 5.Slowly raise your arms and twist your hands inwards and take your arms over your shoulder. Hold for a sec. \n\n 6. Bring back the arms slowly towards against the resistance, back to the initial position.")
    ]
}

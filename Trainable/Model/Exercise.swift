//
//  ExerciseModel.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 10/03/2022.
//

import Foundation

class Exercise: ObservableObject, Codable,Identifiable{
    let id: UUID
    var bodyRegion: String
    var exercisesName: String
    var maxWeight: Int
    var maxRepetitions: Int
    var imageUrl: String
    var video: String
    var description: String
    
    
    init(id: UUID = UUID(), bodyRegion:String, exercisesName: String, maxWeight: Int, maxRepetitions: Int,
         imageUrl: String, video: String, description: String){
        self.id = id
        self.bodyRegion = bodyRegion
        self.exercisesName = exercisesName
        self.maxWeight = maxWeight
        self.maxRepetitions = maxRepetitions
        self.imageUrl = imageUrl
        self.video = video
        self.description = description
        }
}

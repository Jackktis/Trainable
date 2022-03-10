//
//  StrengthCategories.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 25/02/2022.
//

import Foundation

//
// Identifiable - sørger for en stabil genkendelse til classen eller value type. Eks sørger for at et id ikke ændre sig
class StrengthCategories: Identifiable, ObservableObject{
    let id: UUID // universal unique key
    var title: String
    var name: String
    var image: String
    var exercisesList: [Exercise]
    
    init(id: UUID = UUID(), title: String , name: String,  image: String, exercisesList: [String]){
        self.id = id
        self.title = title
        self.name = name
        self.image = image
        // $0 means first argument, he first parameter passed into the closure
        self.exercisesList = exercisesList.map{Exercise(name: $0  , maxWeight: 0 , maxRepetitions: 0,
                                                        imageUrl: $0,video: $0, description: $0)}
        }
    }


    struct Exercise: Identifiable{
        let id: UUID
        var name: String
        var maxWeight: Int
        var maxRepetitions: Int
        var imageUrl: String
        var video: String
        var description: String

        init(id: UUID = UUID(), name:String, maxWeight: Int, maxRepetitions: Int,
             imageUrl: String, video: String, description: String){
            self.id = id
            self.name = name
            self.maxWeight = maxWeight
            self.maxRepetitions = maxRepetitions
            self.imageUrl = imageUrl
            self.video = video
            self.description = description
            }
        }


extension StrengthCategories {
    static let allCategories: [StrengthCategories] =
    [
        //---------------------------------- Back ---------------------------------------
        StrengthCategories(title: "Back", name: "Delts & Shoulders", image: "Delts & Shoulders", exercisesList: []),
        StrengthCategories(title: "Back", name: "Lats", image: "Lats", exercisesList: []),
        
        StrengthCategories(title: "Back", name: "Traps", image: "Traps", exercisesList: []),
        StrengthCategories(title: "Back", name: "Triceps", image: "Triceps", exercisesList: []),
        
        //---------------------------------- Front ---------------------------------------
        StrengthCategories(title: "Front", name: "Abdominals", image: "Abdominals", exercisesList: []),
        StrengthCategories(title: "Front", name: "Biceps", image: "Biceps", exercisesList: []),
        StrengthCategories(title: "Front", name: "Delts & Shoulders", image: "Delts & Shoulders - front", exercisesList: []),
        StrengthCategories(title: "Front", name: "Obliques", image: "Obliques", exercisesList: []),
        StrengthCategories(title: "Front", name: "Pecs & Chest", image: "Pecs & Chest", exercisesList: []),
        
        //---------------------------------- Front ---------------------------------------
        StrengthCategories(title: "Legs", name: "Calves", image: "Calves", exercisesList: []),
        StrengthCategories(title: "Legs", name: "Glutes", image: "Glutes", exercisesList: []),
        StrengthCategories(title: "Legs", name: "Hamstring", image: "Hamstring", exercisesList: [])
  
    ]
}

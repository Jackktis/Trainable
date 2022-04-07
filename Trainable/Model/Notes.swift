//
//  UserNote.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 30/03/2022.
//

import Foundation
import SwiftUI


class Notes: ObservableObject{
    
    // Opretter en dictonary som indeholder notes
    @Published var notes = [String: Note]()
    
    
    
    // Vi tilføjer Note ind i notes med ID af exercises 
    func addNote(note: Note){
        notes[note.id] = note
    }
    
    
    func getMaxWeight(exerciseId: String) -> Int{
        var weight: Int = 0
        if(!(notes[exerciseId] == nil)){
            weight = notes[exerciseId]!.maxWeight
        }
        return weight
    }
    func getMaxRepetitions(exerciseId: String) -> Int{
        var repetitions: Int = 0
        if(!(notes[exerciseId] == nil)){
            repetitions = notes[exerciseId]!.maxRepetition
        }
        return repetitions
    }
    
    func setMaxWeight(exercisesId: String, maxWeight: Int){
        let maxRep = getMaxRepetitions(exerciseId: exercisesId)
        addNote(note: Note.init(id: exercisesId, maxWeight: maxWeight, maxRepetition: maxRep))
    }
    func setMaxRepetitions(exercisesId: String, maxRep: Int){
        let maxWeight = getMaxWeight(exerciseId: exercisesId)
        addNote(note: Note.init(id: exercisesId, maxWeight: maxWeight, maxRepetition: maxRep))
    }
    
}

struct Note: Identifiable{
    var id: String
    var maxWeight: Int
    var maxRepetition: Int
}

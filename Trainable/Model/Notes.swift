//
//  UserNote.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 30/03/2022.
//

import Foundation


class Notes: ObservableObject{
    
    // Opretter en dictonary som indeholder notes
    @Published var notes = [String: Note]()
    
    
    
    struct Note: Identifiable{
        var id: String
        var maxWeight: Int
        var maxRep: Int
    }
    
    // Vi tilføjer Note ind i notes med ID af exercises 
    func addNote(note: Note){
        notes[note.id] = note
    }
    
}

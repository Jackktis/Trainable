//
//  Photo.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 21/03/2022.
//

import Foundation

/*
@MainActor
class Photo: ObservableObject{
    
    @Published private(set) var items: [ExerciseModel] = []
    
    func updateItems() async{
            let fetched = await fetchPhotos()
            items = fetched
        }
    
    
    func fetchPhotos() async -> [ExerciseModel] {
        var downloaded: [ExerciseModel] = []
        for id in randomPhotoDates(){
            let url = ExerciseModel.requestFor(date: date)
            if let photo = await fetchPhoto(from: url){
                downloaded.append(photo)
            }
        }
    }

    
    
    func fetchPhoto(from url:URL) async  -> ExerciseModel?{
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            return try ExerciseModel(data: data)
        } catch{
            return nil
        }
    }
}
*/

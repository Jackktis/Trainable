//
//  TrainableApp.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

@main
struct TrainableApp: App {
    @EnvironmentObject var exercise: Exercise
    
    var body: some Scene {
        WindowGroup {
            TabNavView()
        }
    }
}

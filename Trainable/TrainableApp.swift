//
//  TrainableApp.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

@main
struct TrainableApp: App {
    @StateObject private var categories = StrengthCategories(title: <#String#>, name: <#String#>, image: <#String#>, exercisesList: <#[String]#>)
    var body: some Scene {
        WindowGroup {
            TabNavView()
        }
    }
}

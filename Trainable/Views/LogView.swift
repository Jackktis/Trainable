//
//  LogView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

struct LogView: View {
    var exercises = Bundle.main.decode([ExerciseModel].self, from: "WorkOutExercises.json")
    var bodyRegions = Bundle.main.decode([StrengthCategoryModel].self, from: "StrengthBodyRegions.json")
    
    var body: some View {
        ScrollView{
            //------------------------------------- FRONT --------------------------------------
            LogDisclosureGroup_View(title: "Front").padding([.leading, .trailing], 20)
            //------------------------------------- BACK --------------------------------------
            LogDisclosureGroup_View(title: "Back").padding([.leading, .trailing], 20)
            //------------------------------------- LEGS --------------------------------------
            LogDisclosureGroup_View(title: "Legs").padding([.leading, .trailing], 20)
        }.navigationTitle("Exercises Log")
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}


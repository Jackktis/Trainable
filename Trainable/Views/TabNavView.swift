//
//  TabView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

struct TabNavView: View {
    var body: some View {
        TabView {
            //----------------- Food Categories -------------
            NavigationView{
            FoodCategoriesView()
            }
                .tabItem{
                    Image("Food")
                        .font(.system(size:25, weight: .ultraLight))
                    Text("Food")
                }.accessibilityLabel("Food")
            //----------------------- Log -------------------
            NavigationView{
            LogView()
            }
                .tabItem{
                    Image("Log")
                        .font(.system(size:25, weight: .ultraLight))
                    Text("Log")
                }.accessibilityLabel("Log")
            //--------------- WorkOut Categories -------------
            NavigationView{
                WorkOutCategoriesView()
            }
                .tabItem{
                    Image("Exercises")
                        .font(.system(size:25))
                    Text("Exercises")
                }.accessibilityLabel("Exercises")
            //--------------------- Timer ---------------------
            NavigationView{
            TimerView()
            }
                .tabItem{
                    Image("Timer")
                        .font(.system(size:25, weight: .ultraLight))
                    Text("Timer")
                }.accessibilityLabel("Timer")
            //---------------- Exercises Ideas -----------------
            NavigationView{
            ExercisesIdeaView()
            }
                .tabItem{
                    Image("Ideas")
                        .font(.system(size: 34))
                    Text("Ideas")
                }.accessibilityLabel("Ideas")
        }.accentColor(Color("FeldGrau"))
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabNavView()
    }
}

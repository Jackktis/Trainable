//
//  TabView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

struct TabNavView: View {
    @State private var selection = 3
    var body: some View {
        TabView(selection: $selection) {
            //----------------- Food Categories -------------
            NavigationView{
            FoodCategoriesView()
            }
                .tabItem{
                    Image("Food")
                        .font(.system(size:25, weight: .ultraLight))
                    Text("Food")
                }.accessibilityLabel("Food")
                .tag(1)
            //----------------------- Log -------------------
            NavigationView{
            LogView()
            }
                .tabItem{
                    Image("Log")
                        .font(.system(size:25, weight: .ultraLight))
                    Text("Log")
                }.accessibilityLabel("Log")
                .tag(2)
            //--------------- WorkOut Categories -------------
            NavigationView{
                WorkOutCategoriesView()
            }
                .tabItem{
                    Image("Exercises")
                        .font(.system(size:25))
                    Text("Exercises")
                }.accessibilityLabel("Exercises")
                .tag(3)
            //--------------------- Timer ---------------------
            NavigationView{
            TimerView()
            }
                .tabItem{
                    Image("Timer")
                        .font(.system(size:25, weight: .ultraLight))
                    Text("Timer")
                }.accessibilityLabel("Timer")
                .tag(4)
            //---------------- Exercises Ideas -----------------
            NavigationView{
            ExercisesIdeaView()
            }
                .tabItem{
                    Image("Ideas")
                        .font(.system(size: 34))
                    Text("Ideas")
                }.accessibilityLabel("Ideas")
                .tag(5)
        }.accentColor(Color("FeldGrau"))
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabNavView()
    }
}

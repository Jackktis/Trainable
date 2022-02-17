//
//  TabView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        TabView{
            CategoryView()
                .tabItem{
                    Image(systemName: "1.squar.fill")
                    Text("First")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}

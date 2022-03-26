//
//  AsyncImage_view.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 26/03/2022.
//

import SwiftUI

struct AsyncImage_view: View {
    var exercisesImageUrl: String
    
    var body: some View {
        VStack(alignment: .center){
            AsyncImage(url: URL(string: exercisesImageUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
    }
}


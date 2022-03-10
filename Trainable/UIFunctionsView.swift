//
//  UIFunctions.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 01/03/2022.
//

import SwiftUI

struct UIFunctionsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
extension Image {
    func centerCropped() -> some View {
        GeometryReader { geo in
            self
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: 165)
            .clipped()
            .frame(maxWidth: .infinity)
            .frame(height: 165)
            .cornerRadius(8)
        }
    }
}
extension Text {
    func textModifier() -> some View {
        GeometryReader { geo in
            self
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size:40))
                .shadow(color: .black, radius: 2, x: 0, y: 2)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
}
struct UIFunctions_Previews: PreviewProvider {
    static var previews: some View {
        UIFunctionsView()
    }
}

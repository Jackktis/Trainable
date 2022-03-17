//
//  UIFunctions.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 10/03/2022.
//

import SwiftUI

// for the categories custom Image modifier
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

// text category modifier
extension Text {
    func textWorkOutModifier() -> some View {
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


// normal text modifier so it gets white and bold
extension Text {
    func BodyRegionTextModifier() -> some View {
            self
                .foregroundColor(.white)
                .fontWeight(.bold)
                .scaledToFit()
                .offset(y:-2)
    }
}
// normal text modifier so it gets white and bold
extension Text {
    func TitleText() -> some View {
        self
            .fontWeight(.bold)
            .font(.system(size:30))
            .frame(alignment: .leading)
        }
    }

// it is used for making a squar have round corners in the bottom 
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


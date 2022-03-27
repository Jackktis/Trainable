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


//For the strokes around specifics part of the button in exercisesDetailView
//https://stackoverflow.com/questions/58632188/swiftui-add-border-to-one-edge-of-an-image
extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
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


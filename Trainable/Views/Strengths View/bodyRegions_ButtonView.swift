//
//  button2try.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/03/2022.
//

import SwiftUI

struct bodyRegions_ButtonView: View {
    var category: StrengthCategoryModel
    var body: some View {
        VStack{
            VStack(alignment:.center){
                ZStack{
                    Image(category.bodyRegionImage)
                        .resizable()
                        .scaledToFit()
                        .offset(y:4)
                }.shadow(color: .black, radius: 2, x: 0, y: 2)
                
        }.frame(width: 150, height: 140, alignment: .center)
            
            VStack{
                Text(category.bodyRegion)
                    .BodyRegionTextModifier()
            }.frame(width: 150, height: 25, alignment: .center)
                .background(Color(category.colorIdentity))
            
            }.background(Color("White"))
            .cornerRadius(8)
}

struct button2try_Previews: PreviewProvider {
    static let category = StrengthCategoryModel(id: "1", title: "Front", bodyRegion: "Delts & Shoulders", bodyRegionImage: "Delts & Shoulders - front", colorIdentity: "Peach")
    static var previews: some View {
        bodyRegions_ButtonView(category: category)
           }
    
}
}

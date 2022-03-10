//
//  Category list.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 21/02/2022.
//

import SwiftUI

struct bodyRegions_ButtonView: View {
    let bodyRegion: StrengthCategories
    
    var body: some View {
        Button(action: {}){
            VStack(alignment: .center){
                Image(bodyRegion.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 76, height: 75)
            
                Text(bodyRegion.name).fixedSize().scaledToFit()
            }
        }.cornerRadius(8)
        .padding()
        .background(Color("Steel Teal"))
        .shadow(color: .black, radius: 2, x: 0, y: 2)
        
        
}
}

struct BodyParts_Button_Previews: PreviewProvider {
    static var bodyRegion = StrengthCategories.allCategories[0]
    static var previews: some View {
        bodyRegions_ButtonView(bodyRegion: bodyRegion)
            .previewLayout(.fixed(width: 140, height: 130))
    }
}



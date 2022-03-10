//
//  TimerView.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 17/02/2022.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        ZStack{
            Text("Timer Editor")
        Circle()
            .strokeBorder(lineWidth: 24)
        }
            .padding()
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}

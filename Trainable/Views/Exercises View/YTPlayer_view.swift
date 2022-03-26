//
//  YTPlayer_view.swift
//  Trainable
//
//  Created by Kristoffer Baumgarten on 26/03/2022.
//

import SwiftUI
import YouTubePlayerKit




struct YTPlayer_View: View {
    var exerciseUrl: String
    // https://github.com/SvenTiigi/YouTubePlayerKit#loadcue-video
    let youTubePlayer: YouTubePlayer = ""
    
    var body: some View {
        YouTubePlayerView( .init(
            source: .url(exerciseUrl))){ state in
            // Overlay ViewBuilder closure to place an overlay View
            // for the current `YouTubePlayer.State`
            switch state {
            case .idle:
                ProgressView()
            case .ready:
                EmptyView()
            case .error(_):
                Text(verbatim: "YouTube player couldn't be loaded")
            }
        }
    }
}

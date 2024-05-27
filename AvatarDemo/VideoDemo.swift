//
//  VideoDemo.swift
//  AvatarDemo
//
//  Created by Philip Rehker on 25.05.24.
//

import SwiftUI
import AVKit

struct VideoDemo: View {
    @State var isPlaying = false
    @State var currentVideo = false
    @State var player1 = AVPlayer(url: Bundle.main.url(forResource: "Test", withExtension: "mov")!)
    @State var player2 = AVPlayer(url: Bundle.main.url(forResource: "Test2", withExtension: "mov")!)
    var body: some View {
        currentVideo ? VideoPlayer(player: player1) : VideoPlayer(player: player2)
        Button {
            if currentVideo {
                isPlaying ? stopPlaying(player: player2) : startPlaying(player: player2)
                currentVideo.toggle()
            }else {
                isPlaying ? stopPlaying(player: player1) : startPlaying(player: player1)
                currentVideo.toggle()
            }
            
        } label: {
            Image(systemName: isPlaying ? "stop" : "play")
                .padding()
        }
    }
}

func startPlaying(player: AVPlayer) {
    player.play()
    player.seek(to: .zero)
}

func stopPlaying(player: AVPlayer) {
    player.pause()
}

#Preview {
    VideoDemo()
}

//
//  ControlView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI


struct ControlView: View {
    @Binding var backToRoot: Bool
    @State var showGameOver: Bool = false
    @State var isPlaying: Bool = true
    var body: some View {
        NavigationView{
            HStack {
                VStack {
                    Button {
                        AVService.shared.player?.stop()
                        showGameOver.toggle()
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .tint(Color.red)
                    .font(.title2)
                    Text("End")
                }
                VStack {
                    Button {
                        isPlaying.toggle()
                        if isPlaying {
                            AVService.shared.player?.play()
                        } else {
                            AVService.shared.player?.pause()
                        }
                    } label: {
                        Image(systemName: isPlaying ? "pause" : "play")
                    }
                    .tint(Color.yellow)
                    .font(.title2)
                    Text( isPlaying ? "Pause" : "Resume")
                }
            }}.sheet(isPresented: $showGameOver) {
                GameOver(backToRoot: $backToRoot)
                
            }
        
    }
}

//struct ControlView_Previews: PreviewProvider {
//    static var previews: some View {
//        ControlView()
//    }
//}

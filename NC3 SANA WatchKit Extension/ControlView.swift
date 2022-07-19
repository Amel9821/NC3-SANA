//
//  ControlView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI

struct ControlView: View {
    var body: some View {
        HStack {
            VStack {
                Button {
                    AVService.shared.player?.stop()
                } label: {
                    Image(systemName: "xmark")
                }
                .tint(Color.red)
                .font(.title2)
                Text("End")
            }
            VStack {
                Button {
                    AVService.shared.player?.pause()
                } label: {
                    Image(systemName:  "pause")
                }
                .tint(Color.yellow)
                .font(.title2)
                Text( "Pause")
            }
        }
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView()
    }
}

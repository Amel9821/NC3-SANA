//
//  TabView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 19/07/22.
//

import SwiftUI

struct SessionPageView: View {
    @State var backToRoot = false
    @State private var selection: Tab = .games
    
    enum Tab {
        case controls, games
    }
    var body: some View {
        TabView(selection: $selection) {
            ControlView().tag(Tab.controls)
            GameView(backToRoot: backToRoot).tag(Tab.games)
        }
        .tabViewStyle(.page)
    }
    
    private func displayGameView() {
        withAnimation {
            selection = .games
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        SessionPageView()
    }
}

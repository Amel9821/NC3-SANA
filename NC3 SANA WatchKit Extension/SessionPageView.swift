//
//  TabView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 19/07/22.
//

import SwiftUI

struct SessionPageView: View {
    @Binding var backToRoot: Bool
    @State var selection: Tab = .games
    
    enum Tab {
        case controls, games
    }
    var body: some View {
        TabView(selection: $selection) {
            ControlView(backToRoot: $backToRoot).tag(Tab.controls)
            GameView(backToRoot: $backToRoot).tag(Tab.games)
        }
        .onAppear {
            print(backToRoot,"session")
        }
        
        .tabViewStyle(.page)
    }
    
    private func displayGameView() {
        withAnimation {
            selection = .games
        }
    }
}

//struct TabView_Previews: PreviewProvider {
//    static var previews: some View {
//        SessionPageView()
//    }
//}

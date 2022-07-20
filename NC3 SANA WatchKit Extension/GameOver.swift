//
//  GameOver.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 19/07/22.
//

import SwiftUI

struct GameOver: View {
    @Binding var backToRoot : Bool
    @State var showChooseSongView: Bool = false
    var body: some View {
        NavigationView{
        VStack{
            Image("Sad")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("축하해요")
            Text("Game Over")
        }
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { timer in
                backToRoot = false
                
                
            }
        }
//        }.fullScreenCover(isPresented: $showChooseSongView) {
//            ChooseSongView()}
        
    }.navigationBarBackButtonHidden(true)
    }
}

struct GameOver_Previews: PreviewProvider {
    static var previews: some View {
        GameOver(backToRoot: .constant(false))
    }
}

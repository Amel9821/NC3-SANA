//
//  GameOver.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 19/07/22.
//

import SwiftUI

struct GameOver: View {
    var body: some View {
        NavigationView{
        VStack{
            Image("Sad")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("축하해요")
            Text("Game Over")
        }
        }.navigationTitle("Result")
    }
}

struct GameOver_Previews: PreviewProvider {
    static var previews: some View {
        GameOver()
    }
}

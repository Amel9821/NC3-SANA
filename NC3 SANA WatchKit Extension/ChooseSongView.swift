//
//  ChooseSongView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI

//struct Song {
//    @State var singer: String = ""
//    @State var title: String = ""
//}

struct ChooseSongView: View {

    @State var showGameView: Bool = false
    @State var isPlaying: Bool = false
    
//    var playlist = [
//        Song(singer: "Bigbang", title: "Fantastic Baby"),
//        Song(singer: "Jesse", title: "Zoom"),
//        Song(singer: "NCT", title: "Beatbox"),
//        Song(singer: "Twice", title: "What is Love")
//    ]
    var body: some View {
      //  ScrollView{
//            VStack(alignment: .leading) {
//                Text("Choose your song")
//        List{
//            ForEach(playlist.indices, id: \.self) { it in
//                NavigationLink(destination: GameView(), isActive: self.$showGameView
//                , label: {
//                    Text(playlist[it].singer + " - " + playlist[it].title)
//                        .onTapGesture {
//                            self.showGameView = true
//                            AVService.shared.playMusic1()
//                        }
//                })
//
//            }.padding(
//                EdgeInsets(top: 15, leading: 5, bottom: 15, trailing: 5))
//            }.listStyle(.carousel)
//            .navigationTitle("Song List")

    
            VStack(alignment: .leading){
            Text("Choose your song")
        List{
            NavigationLink(destination: GameView(), isActive: self.$showGameView, label: {
                Text("Bigbang - Fantastic Baby")
                    .onTapGesture {
                        self.showGameView = true
                        AVService.shared.playMusic1()
                    }
            }
            )
            NavigationLink(destination: GameView(), isActive: self.$showGameView, label: {
                Text("Jesse - Zoom")
                    .onTapGesture {
                        self.showGameView = true
                        AVService.shared.playMusic2()
                    }
            }
            )
            NavigationLink(destination: GameView(), isActive: self.$showGameView, label: {
                Text("NCT - Beatbox")
                    .onTapGesture {
                        self.showGameView = true
                        AVService.shared.playMusic3()
                    }
            }
            )
            NavigationLink(destination: GameView(), isActive: self.$showGameView, label: {
                Text("Twice - What is Love")
                    .onTapGesture {
                        self.showGameView = true
                        AVService.shared.playMusic4()
                    }
            }
            )
        }
        .listStyle(.carousel)
            }
            }
    }
    


struct ChooseSongView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseSongView()
    }
}

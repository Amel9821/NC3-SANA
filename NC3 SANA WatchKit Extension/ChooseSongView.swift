//
//  ChooseSongView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI

struct ChooseSongView: View {
    
    @State var backToRoot = false
    @State var showSessionPageView: Bool = false
    @State var isPlaying: Bool = false
    
    var body: some View {
        
        
        VStack(alignment: .leading){
            Text("Choose your song")
            List{
                NavigationLink(destination: SessionPageView(), isActive: self.$showSessionPageView, label: {
                    Text("Bigbang - Fantastic Baby")
                        .onTapGesture {
                            self.showSessionPageView = true
                            AVService.shared.playMusic1()
                        }
                }
                )
                NavigationLink(destination: SessionPageView(), isActive: self.$showSessionPageView, label: {
                    Text("Jesse - Zoom")
                        .onTapGesture {
                            self.showSessionPageView = true
                            AVService.shared.playMusic2()
                        }
                }
                )
                NavigationLink(destination: SessionPageView(), isActive: self.$showSessionPageView, label: {
                    Text("NCT - Beatbox")
                        .onTapGesture {
                            self.showSessionPageView = true
                            AVService.shared.playMusic3()
                        }
                }
                )
                NavigationLink(destination: SessionPageView(), isActive: self.$showSessionPageView, label: {
                    Text("Twice - What is Love")
                        .onTapGesture {
                            self.showSessionPageView = true
                            AVService.shared.playMusic4()
                        }
                }
                )
            }
            // .foregroundColor(Color("UnguTua")
            .listStyle(.carousel)
            
        }
        .onAppear {
            AVService.shared.player?.stop()
        }
    }
}



struct ChooseSongView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseSongView()
    }
}

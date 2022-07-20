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
                NavigationLink(destination: SessionPageView(backToRoot: $backToRoot), isActive: self.$showSessionPageView, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("Ungu"))
                            .frame(width: 195, alignment: .leading)
                            .offset(x: -10)
                        VStack(alignment: .leading) {
                            Text("Bigbang")
                                .font(.body)
                            Text("Fantastic Baby")
                                .font(.footnote)
                        }
                        .padding()
                        .foregroundColor(Color("UnguTua"))
                        .offset(x: -45)
                    }
                        .onTapGesture {
                            self.showSessionPageView = true
                            AVService.shared.playMusic1()
                        }
                }
                )
                NavigationLink(destination: SessionPageView(backToRoot: $backToRoot), isActive: self.$showSessionPageView, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("Ungu"))
                            .frame(width: 195, alignment: .leading)
                            .offset(x: -10)
                        VStack(alignment: .leading) {
                            Text("Jessi")
                                .font(.body)
                            Text("Zoom")
                                .font(.footnote)
                        }
                        .padding()
                        .foregroundColor(Color("UnguTua"))
                        .offset(x: -73)
                    }
                        .onTapGesture {
                            self.showSessionPageView = true
                            AVService.shared.playMusic2()
                        }
                }
                )
                NavigationLink(destination: SessionPageView(backToRoot: $backToRoot), isActive: self.$showSessionPageView, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("Ungu"))
                            .frame(width: 195, alignment: .leading)
                            .offset(x: -10)
                        VStack(alignment: .leading) {
                            Text("NCT")
                                .font(.body)
                            Text("Beatbox")
                                .font(.footnote)
                        }
                        .padding()
                        .foregroundColor(Color("UnguTua"))
                        .offset(x: -65)
                    }
                        .onTapGesture {
                            self.showSessionPageView = true
                            AVService.shared.playMusic3()
                        }
                }
                )
                NavigationLink(destination: SessionPageView(backToRoot: $backToRoot), isActive: self.$showSessionPageView, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("Ungu"))
                            .frame(width: 195, alignment: .leading)
                            .offset(x: -10)
                        VStack(alignment: .leading) {
                            Text("Twice")
                                .font(.body)
                            Text("What is love?")
                                .font(.footnote)
                        }
                        .padding()
                        .foregroundColor(Color("UnguTua"))
                        .offset(x: -50)
                    }
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

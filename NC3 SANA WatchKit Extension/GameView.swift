//
//  GameView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI

struct Gambar {
    var size: Int
    var judul: String = ""
}

struct GameView: View {
    
    var gambar = [
    Gambar(size: 12, judul: "apaya")
    ]
    
    var body: some View {
        //        ZStack{
        //        VStack {
        //        ZStack{
        //                    Circle()
        //                        .fill(Color("Ungu"))
        //                    Triangle()
        //                        .fill(Color("UnguTua"))
        //                        .frame(width: 30, height: 30)
        //                }
        //                .frame(width: 62, height: 62)
        //                .opacity(1)
        //        Spacer()
        //        ZStack{
        //                    Circle()
        //                        .fill(Color("Ungu"))
        //                    Triangle()
        //                        .fill(Color("UnguTua"))
        //                        .frame(width: 30, height: 30)
        //                }
        //                .frame(width: 62, height: 62)
        //                .opacity(0.3)
        //                .rotationEffect(.degrees(180))
        //    }
        //        HStack {
        //            ZStack{
        //                        Circle()
        //                            .fill(Color("Ungu"))
        //                        Triangle()
        //                            .fill(Color("UnguTua"))
        //                            .frame(width: 30, height: 30)
        //                    }
        //                    .frame(width: 62, height: 62)
        //                    .opacity(0.3)
        //                    .rotationEffect(.degrees(270))
        //            Spacer()
        //            ZStack{
        //                        Circle()
        //                            .fill(Color("Ungu"))
        //                        Triangle()
        //                            .fill(Color("UnguTua"))
        //                            .frame(width: 30, height: 30)
        //                    }
        //                    .frame(width: 62, height: 62)
        //                    .opacity(0.3)
        //                    .rotationEffect(.degrees(90))
        //
        //
        //        }
        //    }
        
        
        
        
        //1. Fungsi yang di eksekusi/jalankan setiap interval waktu tertentu
        //2. Random visual effect (scale button)
        
        
        ZStack {
            VStack {
                upArrow
                Spacer()
                downArrow
            }
            HStack {
                leftArrow
                Spacer()
                rightArrow
            }
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                print("Oy oy")
            }
        }
    }
    
    var upArrow: some View {
        ZStack{
            Circle()
                .fill(Color("Ungu"))
            Triangle()
                .fill(Color("UnguTua"))
                .frame(width: 30, height: 30)
        }
        .frame(width: 62, height: 62)
        .opacity(1)
    }
    var rightArrow: some View {
        ZStack{
            Circle()
                .fill(Color("Ungu"))
            Triangle()
                .fill(Color("UnguTua"))
                .frame(width: 30, height: 30)
        }
        .frame(width: 62, height: 62)
        .opacity(0.3)
        .rotationEffect(.degrees(90))
    }
    var leftArrow: some View {
        ZStack{
            Circle()
                .fill(Color("Ungu"))
            Triangle()
                .fill(Color("UnguTua"))
                .frame(width: 30, height: 30)
        }
        .frame(width: 62, height: 62)
        .opacity(0.3)
        .rotationEffect(.degrees(270))
    }
    var downArrow: some View {
        ZStack{
            Circle()
                .fill(Color("Ungu"))
            Triangle()
                .fill(Color("UnguTua"))
                .frame(width: 30, height: 30)
        }
        .frame(width: 62, height: 62)
        .opacity(0.3)
        .rotationEffect(.degrees(180))
    }
    
    
}


struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

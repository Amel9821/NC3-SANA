//
//  GameView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI

struct GameView: View {
    var body: some View {
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
       // .opacity(0.3)
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

//
//  GameView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI

struct GameView: View {
    @Binding var backToRoot : Bool
    @State private var randomSelected : Int = 0
    @State var showResultView = false
   // @State var latestRandomNumber: Int = 0
    
    // let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    // @State private var counter = 0.0
    
    // setiap 0.3 detik button nyala berubah selama 30 detik => 100 kali random
    
    
    var body: some View {
        
        //1. Fungsi yang di eksekusi/jalankan setiap interval waktu tertentu, dispatch queue
        //2. Random visual effect (scale button)
        
        ZStack {
            VStack {
                //                upArrow
                TriangleButton(backToRoot: $backToRoot, rotation: 0, buttonNumber: 1, selectedNumber: randomSelected)
                //                    .onTapGesture {
                //                        if randomSelected == 1 {
                //                            print("BENAAAR")
                //                            randomSelected = generateRandomNumber()
                //                        } else {
                //                            print("Salaah")
                //                            randomSelected = generateRandomNumber()
                //                        }
                //                    }
                Spacer()
                //                downArrow
                TriangleButton(backToRoot: $backToRoot, rotation: 180, buttonNumber: 2, selectedNumber: randomSelected)
            }
            HStack {
                //                leftArrow
                TriangleButton(backToRoot: $backToRoot, rotation: 270, buttonNumber: 3, selectedNumber: randomSelected)
                Spacer()
                //                rightArrow
                TriangleButton(backToRoot: $backToRoot, rotation: 90, buttonNumber: 4, selectedNumber: randomSelected)
            }
        }
        //        .onReceive(timer) { time in
        //            //
        //            if counter.truncatingRemainder(dividingBy: 0.3) == 0.0 {
        //
        //                //randomSelected = generateRandomNumber()
        //            }
        //            print(counter.truncatingRemainder(dividingBy: 0.3))
        //            counter += 0.1
        //        }
        .onAppear {
            print("appear")
            randomSelected = generateRandomNumber()
            Timer.scheduledTimer(withTimeInterval: 0.7, repeats: true) { timer in
                randomSelected = generateRandomNumber()
            }
            Timer.scheduledTimer(withTimeInterval: 30, repeats: false) { timer in
                showResultView.toggle()
                
            }
        }
        
        .sheet(isPresented: $showResultView) {
            ResultView(backToRoot: $backToRoot)}
        
        
    }
    
    func generateRandomNumber() -> Int {
        return Int.random(in: 1..<5)
    }
    
    
}

struct TriangleButton : View {
    @Binding var backToRoot : Bool
    @State var showGameOver: Bool = false
    var rotation : CGFloat = 0
    var buttonNumber : Int = 0
    var selectedNumber : Int = 0
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color("Ungu"))
            Triangle()
                .fill(Color("UnguTua"))
                .frame(width: 30, height: 30)
        }
        .frame(width: 62, height: 62)
        .opacity(buttonNumber == selectedNumber ? 1 : 0.3)
        .rotationEffect(.degrees(rotation))
        .onTapGesture {
            if buttonNumber == selectedNumber {
                print("Benar")
            } else {
                print("Salah")
                showGameOver.toggle()
                AVService.shared.player?.stop()
            }
        }
        .sheet(isPresented: $showGameOver) {
            GameOver(backToRoot: $backToRoot )}
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

//struct GameView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameView(backToRoot: .constant(false))
//    }
//}


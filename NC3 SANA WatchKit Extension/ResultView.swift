//
//  ResultView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI

struct ResultView: View {
    
    @Binding var backToRoot : Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            VStack{
                Image("Happy")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                Text("게임셋")
                Text("Congratulation")
            }
            .onAppear{
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { timer in
                    //print("oyy")
                    backToRoot = false
                    presentationMode.wrappedValue.dismiss()
                    
                }
                
            }
            //            .fullScreenCover(isPresented: $showChooseSongView) {
            //                ChooseSongView()}
        }.navigationBarBackButtonHidden(true)
    }
}

//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView(backToRoot: .constant(false))
//    }
//}

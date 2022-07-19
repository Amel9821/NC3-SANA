//
//  ResultView.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 16/07/22.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        NavigationView{
        VStack{
            Image("Happy")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("게임셋")
            Text("Congratulation")
        }
        }//.navigationTitle("Result")
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}

//
//  ViewModelSong.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 17/07/22.
//


import Foundation
import SwiftUI

class ViewModelSong: ObservableObject {
    
    @Published var dataSinger: String = ""
    @Published var dataSong: String = ""
}

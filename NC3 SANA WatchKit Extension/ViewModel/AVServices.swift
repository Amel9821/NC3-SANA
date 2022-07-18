//
//  AVServices.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 17/07/22.
//

import Foundation
import AVFoundation

class AVService{
    var player : AVAudioPlayer?
    static let shared = AVService()
    
    func playMusic1(){
        //akses alamat
        let path = Bundle.main.path(forResource: "fantasticbaby", ofType:"m4a") ?? ""
        //ubah alamatnya jadi url
        let url = URL(fileURLWithPath: path)
        do {
            //masukin url ke audio player
            player = try AVAudioPlayer(contentsOf: url)
            
            //player di mainkan
            player?.play()
        } catch {
            // couldn't load file :(
        }
    }
    func playMusic2(){
        //akses alamat
        let path = Bundle.main.path(forResource: "Zoomcut", ofType:"m4a") ?? ""
        //ubah alamatnya jadi url
        let url = URL(fileURLWithPath: path)
        do {
            //masukin url ke audio player
            player = try AVAudioPlayer(contentsOf: url)
            
            //player di mainkan
            player?.play()
        } catch {
            // couldn't load file :(
        }
    }
    func playMusic3(){
        //akses alamat
        let path = Bundle.main.path(forResource: "beatbox", ofType:"m4a") ?? ""
        //ubah alamatnya jadi url
        let url = URL(fileURLWithPath: path)
        do {
            //masukin url ke audio player
            player = try AVAudioPlayer(contentsOf: url)
            
            //player di mainkan
            player?.play()
        } catch {
            // couldn't load file :(
        }
    }
    func playMusic4(){
        //akses alamat
        let path = Bundle.main.path(forResource: "twice", ofType:"m4a") ?? ""
        //ubah alamatnya jadi url
        let url = URL(fileURLWithPath: path)
        do {
            //masukin url ke audio player
            player = try AVAudioPlayer(contentsOf: url)
            
            //player di mainkan
            player?.play()
        } catch {
            // couldn't load file :(
        }
    }
}

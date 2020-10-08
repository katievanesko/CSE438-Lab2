//
//  PlaySound.swift
//  Lab 2
//
//  Created by Katie Vanesko on 10/7/20.
//  Copyright © 2020 Katie Vanesko. All rights reserved.
//
// Code taken from: https://www.youtube.com/watch?v=TaFvJajJo8k
import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Error: couldn't find sound file")
        }
    }
    
}


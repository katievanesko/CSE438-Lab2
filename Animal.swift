//
//  Dog.swift
//  Lab 2
//
//  Created by Katie Vanesko on 10/6/20.
//  Copyright © 2020 Katie Vanesko. All rights reserved.
//

import Foundation
import UIKit

class Animal {
    
    //Data
    let backgroundColor: UIColor
    var image : UIImage?
    var currFoodLevel : CGFloat = 0
    var currHappinessLevel: CGFloat = 0
    var totalFeeds : Int = 0
    var totalPlays : Int = 0
    var evolved : Bool = false
    let sound : String
    let gif : String
    
    
    //Init
    init(background : UIColor, img : UIImage, sound : String, gif: String){
        backgroundColor = background
        image = img
        self.sound = sound
        self.gif = gif
    }
    
    //Behavior
    func feedAnimal(){
        currFoodLevel += 0.1
        totalFeeds += 1
    }
    
    func playAnimal(){
        currFoodLevel -= 0.1
        currHappinessLevel += 1
        totalPlays += 1
        playSound(sound: self.sound, type: "mp3")
    }
    
    func evolve(){
        let gif = UIImage.gifImageWithName(self.gif)
        //gif loading from https://medium.com/@javedmultani16/how-to-load-gif-image-in-swift-461254f8107b
        self.image = gif
        self.evolved = true
       

        
    }
    
}

//taken from https://developer.apple.com/documentation/swift/equatable
extension Animal: Equatable {
    static func == (lhs: Animal, rhs: Animal) -> Bool {
        return
            lhs.backgroundColor == rhs.backgroundColor &&
            lhs.image == rhs.image
    }
}

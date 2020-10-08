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
    
    
    //Init
    init(background : UIColor, img : UIImage){
        backgroundColor = background
        image = img
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

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
    let backgroundColor: UIColor?
    let image : UIImage?
    var foodLevel : CGFloat?
    var happinessLevel: CGFloat?
    var foodLabel : Int?
    var happinessLabel : Int?
    
    
    //Init
    init(background : UIColor, img : UIImage){
        backgroundColor = background
        self.image = img
        self.foodLevel = 0
        self.happinessLevel = 0
        self.foodLabel = 0
        self.happinessLabel = 0
    }
    
}

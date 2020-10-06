//
//  ViewController.swift
//  Lab 2
//
//  Created by Katie Vanesko on 10/4/20.
//  Copyright © 2020 Katie Vanesko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var happinessDisp: DisplayView!
    @IBOutlet weak var happinessTotal: UILabel!
    
    @IBOutlet weak var foodDisp: DisplayView!
    @IBOutlet weak var foodTotal: UILabel!
    
    @IBOutlet weak var petView: UIView!
    
    var happinessLabel = 0
    var foodLabel = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        happinessDisp.color = petView.backgroundColor ?? .black
        foodDisp.color = petView.backgroundColor ?? .black
        
        
        
    }

    @IBAction func play(_ sender: Any) {
        if foodDisp.value > 0 {
            happinessLabel += 1
            happinessTotal.text = String(happinessLabel)
            happinessDisp.value += 0.1
            happinessDisp.animateValue(to: happinessDisp.value)
            foodDisp.value -= 0.1
        }
        
        
       
    }
    
    @IBAction func feed(_ sender: Any) {
        if foodDisp.value < 0.9 {
            foodLabel += 1
            foodTotal.text = String(foodLabel)
            foodDisp.value += 0.1
            foodDisp.animateValue(to: foodDisp.value)
        }
    }
    
    func updateDisplay(){
        
    }
}


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
    @IBOutlet weak var petImg: UIImageView!
    
    var dog = Animal(background: UIColor(red: 254/255, green: 100/255, blue: 108/255, alpha: 1), img: UIImage(named:"Dog")!)
    var cat = Animal(background: UIColor(red: 62/255, green: 122/255, blue: 239/255, alpha: 1), img: UIImage(named:"Cat")!)
    var bird = Animal(background: UIColor(red: 239/255, green: 204/255, blue: 50/255, alpha: 1), img: UIImage(named:"Bird")!)
    var bunny = Animal(background: UIColor(red: 167/255, green: 255/255, blue: 179/255, alpha: 1), img: UIImage(named:"Bunny")!)
    var fish = Animal(background: UIColor(red: 176/255, green: 143/255, blue: 255/255, alpha: 1), img: UIImage(named:"Fish")!)
    var happinessLabel = 0
    var foodLabel = 0
    var currentPet : Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeAnimal(animal: dog)
        
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
    
    func changeAnimal(animal:Animal){
        currentPet = animal
        petView.backgroundColor = animal.backgroundColor
        happinessDisp.color = petView.backgroundColor ?? .black
        foodDisp.color = petView.backgroundColor ?? .black
        petImg.image = animal.image
    }
    
    
    @IBAction func changeToDog(_ sender: Any) {
        changeAnimal(animal: dog)
    }
    
    
    @IBAction func changeToCat(_ sender: Any) {
        changeAnimal(animal: cat)
    }
    
    
    @IBAction func changeToBird(_ sender: Any) {
        changeAnimal(animal: bird)
    }
    
    @IBAction func changeToBunny(_ sender: Any) {
        changeAnimal(animal: bunny)
    }
    
    @IBAction func changeToFish(_ sender: Any) {
        changeAnimal(animal: fish)

    }
    
    
    
}

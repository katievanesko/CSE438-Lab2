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
    
    var happinessLabel = 0
    var foodLabel = 0
    var currentPet : Animal?
    
    var dog = Animal(background: UIColor(named:"dogColors")!, img: UIImage(named:"Dog")!)
    var cat = Animal(background: UIColor(named:"catColors")!, img: UIImage(named:"Cat")!)
    var bird = Animal(background: UIColor(named:"birdColors")!, img: UIImage(named:"Bird")!)
    var bunny = Animal(background: UIColor(named:"bunnyColors")!, img: UIImage(named:"Bunny")!)
    var fish = Animal(background: UIColor(named:"fishColors")!, img: UIImage(named:"Fish")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeAnimal(animal: dog)
        petView.backgroundColor = dog.backgroundColor
        petImg.image = dog.image
        
        //gif loading from https://medium.com/@javedmultani16/how-to-load-gif-image-in-swift-461254f8107b

    }
    
    @IBAction func feed(_ sender: Any) {
        if foodDisp.value < 0.9 {
            foodLabel += 1
            foodTotal.text = "fed: " + String(foodLabel)
            foodDisp.value += 0.1
            foodDisp.animateValue(to: foodDisp.value)
            currentPet?.feedAnimal()
            playSound(sound: "munching", type: "mp3")
        }
    }

    @IBAction func play(_ sender: Any) {
        if foodDisp.value >= 0.1 {
            happinessLabel += 1
            happinessTotal.text = "played: " + String(happinessLabel)
            happinessDisp.value += 0.1
            happinessDisp.animateValue(to: happinessDisp.value)
            foodDisp.value -= 0.1
            currentPet?.playAnimal()
            if currentPet == dog {
                playSound(sound: "bark", type: "mp3")
                if happinessDisp.value > 1.0{
                    playSound(sound: "fireworks", type: "mp3")
                    let gif = UIImage.gifImageWithName("dogsm")
                    dog.image = gif
                    petImg.image = gif
                }
            }
            else if currentPet == cat {
                playSound(sound: "meow", type: "mp3")
                if happinessDisp.value > 1.0{
                    playSound(sound: "fireworks", type: "mp3")

                    let gif = UIImage.gifImageWithName("catsm")
                    cat.image = gif
                    petImg.image = gif
                }
            }
            else if currentPet == bird {
                playSound(sound: "chirp", type: "mp3")
                if happinessDisp.value > 1.0{
                    playSound(sound: "fireworks", type: "mp3")

                    let gif = UIImage.gifImageWithName("birdsm")
                    bird.image = gif
                    petImg.image = gif
                }
            }
            else if currentPet == bunny {
                playSound(sound: "rabbit", type: "mp3")
                if happinessDisp.value > 1.0{
                    playSound(sound: "fireworks", type: "mp3")
                    let gif = UIImage.gifImageWithName("bunnysm")
                    bunny.image = gif
                    petImg.image = gif
                }
            }
            else {
                playSound(sound: "splash", type: "mp3")
                if happinessDisp.value > 1.0{
                    playSound(sound: "fireworks", type: "mp3")
                    let gif = UIImage.gifImageWithName("fishsm")
                    fish.image = gif
                    petImg.image = gif
                }
            }
        }
    }
    
    func changeAnimal(animal:Animal){
        currentPet = animal
        petView.backgroundColor = animal.backgroundColor
        petImg.image = animal.image

        happinessDisp.color = petView.backgroundColor ?? .black
        foodDisp.color = petView.backgroundColor ?? .black
        
        foodDisp.value = animal.currFoodLevel
        foodLabel = animal.totalFeeds
        foodTotal.text = "fed: " + String(foodLabel)
        
        happinessDisp.value = animal.currHappinessLevel
        happinessLabel = animal.totalPlays
        happinessTotal.text = "played: " + String(happinessLabel)
    }
    
    
    @IBAction func changeToDog(_ sender: Any) {
        if currentPet != dog {
            changeAnimal(animal: dog)
        }
    }
    
    
    @IBAction func changeToCat(_ sender: Any) {
        if currentPet != cat {
            changeAnimal(animal: cat)
        }
    }
    
    
    @IBAction func changeToBird(_ sender: Any) {
        if currentPet != bird {
            changeAnimal(animal: bird)
        }
    }
    
    @IBAction func changeToBunny(_ sender: Any) {
        if currentPet != bunny {
            changeAnimal(animal: bunny)
        }
    }
    
    @IBAction func changeToFish(_ sender: Any) {
        if currentPet != fish {
            changeAnimal(animal: fish)
        }
    }
    
    
    
}


//
//  Structs.swift
//  HomeWork3
//
//  Created by user on 08.08.2022.
//

import Foundation


// MARK: Cow Struct


struct Cow: Animal {
    
    var name: String
    
    var milkAmount = [Milk]()
    
    
    func wakeUp() {
        print("Cows: wake up")
    }
    
    func askForFood() {
        print("Cows: MOO! MOO!")
    }
    
   mutating func produceMilk() {
       let someMilk = Milk()
        milkAmount.append(someMilk)
    }
    
}


// MARK: Chicken Struct


struct Chicken: Animal {
    
    var name: String
    
    var eggsAmount = [Egg]()
    
    func wakeUp() {
        print("Chickens: wake up")
    }
    
    func askForFood() {
        print("Chickens: CLUCK! CLUCK!")
    }
    
    mutating func layEggs() {
       let egg = Egg()
        eggsAmount.append(egg)
    }

}

 
// MARK: Egg Struct


struct Egg: Food {
    var quality = "good"
    var weight = 55
}

struct Milk: Food {
    var quality = "good"
}


// MARK: Pig Struct


struct Pig: Animal {
    
    var name: String
    
    func wakeUp() {
        print("Pigs: wake up")
    }
    
    func askForFood() {
        print("Pigs: OINK! OINK!")
    }
    
}


// MARK: Farmer Struct


struct FarmerStruct: Farmer {

    var foodBasket = [Food]()

    var name: String
    

    
    func checkForEggs(_ chik: Chicken) -> Egg? {
        return chik.eggsAmount.first
    }

    mutating func collectEgg(_ egg: Egg) {
        foodBasket.append(egg)
        print("Farmer \(name): collected +1 egg to Food Basket")
    }
    
    
    func checkForMilk(_ cow: Cow) -> Milk? {
       return cow.milkAmount.first
    }

    mutating func collectMilk(_ milk: Milk) {
        foodBasket.append(milk)
        print("Farmer \(name): collected some milk milk to Food Basket")
    }
    

    func feedAnimals() {
        for animal in farm.animals {
            print("Farmer \(name): feeding \(animal.name)")
        }
    }

}


// MARK: Farm Struct


public struct Farm {
    var name: String
    var animals = [Animal]()
    
    func startTheDay() {
        print("The day in \(name) started!")
        for animal in animals {
            animal.wakeUp()
            animal.askForFood()
        }
    }
}

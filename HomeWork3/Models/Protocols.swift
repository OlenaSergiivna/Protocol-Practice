//
//  Protocols.swift
//  HomeWork3
//
//  Created by user on 08.08.2022.
//

import Foundation


protocol Animal {
    var name: String {get set}
    func wakeUp()
    func askForFood()
}


extension Animal {
    
    func wakeUp() {
        print("Wake up")
    }
    
    func askForFood() {
        print("Ask for food")
    }
}




protocol Farmer {
    
    func feedAnimals()
    
    func checkForEggs(_ chik: Chicken) -> Egg?
    
    mutating  func collectEgg(_ egg: Egg)
    
    func checkForMilk(_ cow: Cow) -> Milk?
    
    mutating func collectMilk(_ milk: Milk)

}


extension Farmer {
    
    func feedAnimals() {
        print("Feeding animals...")
    }
    
    func checkForEggs(_ chik: Chicken) -> Egg? {
        return chik.eggsAmount.first
    }
    
    mutating func collectEgg(_ egg: Egg) {
        print("+1 egg to Food Basket")
    }
    
    
    func checkForMilk(_ cow: Cow) -> Milk? {
       return cow.milkAmount.first
    }

    mutating func collectMilk(_ milk: Milk) {
        print("+some milk milk to Food Basket")
    }
    
}




protocol Food {
    var quality: String {get}
}

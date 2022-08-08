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



protocol Farmer {
    
    func feedAnimals()
    
    func checkForEggs(_ chik: Chicken) -> Egg?
    
    mutating  func collectEgg(_ egg: Egg)
    
    func checkForMilk(_ cow: Cow) -> Milk?
    
    mutating func collectMilk(_ milk: Milk)

}



protocol Food {
    var quality: String {get}
}

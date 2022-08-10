//
//  ViewController.swift
//  HomeWork3
//
//  Created by user on 08.08.2022.
//

import UIKit

let viewController = ViewController()


class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        farm.animals.append(chick)
        farm.animals.append(pig)
        farm.animals.append(cow)

        farm.startTheDay()
        farmer.feedAnimals()
        chick.layEggs()
        chick.layEggs()
        cow.produceMilk()
        cow.produceMilk()

        if let egg = farmer.checkForEggs(chick) {
            farmer.collectEgg(egg)
        }

        if let milk = farmer.checkForMilk(cow) {
        farmer.collectMilk(milk)
        }
 
    }


}


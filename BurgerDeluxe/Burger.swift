//
//  Burger.swift
//  BurgerDeluxe
//
//  Created by KEVIN KOCH on 10/26/22.
//

import Foundation
class Burger{
    
    var cook : cookrate!
    var cheese = 0
    var pickles = 0
    var ketchup = 0.0
    var buns = true
    enum cookrate {
        case welldone
        case mediumwell
        case medium
        case mediumrare
        case rare
    }
    init(cook : Int, cheese : Int, pickles : Int, ketchup : Double, buns : Bool){
        if cook == 0{
            self.cook = .welldone
        }
        else if cook == 1{
            self.cook = .mediumwell
        }
        else if cook == 2{
            self.cook = .medium
        }
        else if cook == 3{
            self.cook = .mediumrare
        }
        else{
            self.cook = .rare
        }
        
        self.cheese = cheese
        self.pickles = pickles
        self.ketchup = ketchup
        self.buns = buns
    }
    
    
    
}

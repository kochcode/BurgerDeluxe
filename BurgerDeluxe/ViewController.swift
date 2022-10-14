//
//  ViewController.swift
//  BurgerDeluxe
//
//  Created by KEVIN KOCH on 10/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var burgerTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let components = burgerTitle.text!.components(separatedBy: " ")
    }
    class Burger{
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
    }
}




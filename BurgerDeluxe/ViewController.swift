//
//  ViewController.swift
//  BurgerDeluxe
//
//  Created by KEVIN KOCH on 10/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let components = burgerTitle.text!.components(separatedBy: " ")
    }
    class Burger{
        @IBOutlet weak var burgerSegment: UISegmentedControl!
        @IBOutlet weak var cookedSegment: UISegmentedControl!
        var burgerList = [""]
        var cook = 1
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
        @IBAction func burgerChoice(_ sender: UISegmentedControl) {
            switch burgerSegment.selectedSegmentIndex{
            case 0: cheese = 0; pickles = 0; ketchup = 0; buns = true
            case 1: cheese = 1; pickles = 2; ketchup = 1.5; buns = true
            case 2: cheese = 5; pickles = 10; ketchup = 20; buns = false
            default:
                cheese = 0; pickles = 0; ketchup = 0.0; buns = true
            }
        }
        @IBAction func cookedChoice(_ sender: UISegmentedControl) {
            switch cookedSegment.selectedSegmentIndex{
            case 0: cook = 1
            case 1: cook = 2
            case 2: cook = 3
            case 3: cook = 4
            case 4: cook = 5
            default: cook = 1
            }
        }
        @IBAction func purchase(_ sender: UIButton) {
        }
        
        
    }
    
    
}




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
        var type = 1
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
        init(cook : cookrate, cheese : Int, pickles : Int, ketchup : Double, buns : Bool){
            self.cook = cook
            self.cheese = cheese
            self.pickles = pickles
            self.ketchup = ketchup
            self.buns = buns
        }
        @IBAction func burgerChoice(_ sender: UISegmentedControl) {
            switch burgerSegment.selectedSegmentIndex{
            case 0: type = 1
            case 1: type = 2
            case 2: type = 3
            default:
                type = 1
            }
        }
        @IBAction func cookedChoice(_ sender: UISegmentedControl) {
            switch cookedSegment.selectedSegmentIndex{
            case 0: cook = .welldone
            case 1: cook = .mediumwell
            case 2: cook = .medium
            case 3: cook = .mediumrare
            case 4: cook = .rare
            default: cook = .welldone
            }
        }
        @IBAction func purchase(_ sender: UIButton) {
            if type == 1{
                var burger1 = Burger(cook: <#T##cookrate#>, cheese: 0, pickles: 0, ketchup: 1.5, buns: true)
                burgerList.append("\(burger1)")
            }
            else if type == 2{
                var burger2 = Burger(cook: <#T##cookrate#>, cheese: 2, pickles: 4, ketchup: 3.0, buns: true)
                burgerList.append("\(burger2)")
            }
            else if type == 3{
                var burger3 = Burger(cook: <#T##cookrate#>, cheese: 40, pickles: 2, ketchup: 42.5, buns: false)
                burgerList.append("\(burger3)")
            }
            print(burgerList)
        }
        
        
    }
    
    
}




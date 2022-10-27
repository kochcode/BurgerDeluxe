//
//  ViewController.swift
//  BurgerDeluxe
//
//  Created by KEVIN KOCH on 10/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cookedSegment: UISegmentedControl!
    @IBOutlet weak var burgerSegment: UISegmentedControl!
    @IBOutlet weak var extraSegment: UISegmentedControl!
    var burgerList = [Burger]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let components = burgerTitle.text!.components(separatedBy: " ")
    }
    
    @IBAction func purchase(_ sender: UIButton) {
        var type = burgerSegment.selectedSegmentIndex
        var cookrate = cookedSegment.selectedSegmentIndex
        var exCheese = 0
        var extra = extraSegment.selectedSegmentIndex
        if extra == 0{
            exCheese = 1
        }
        if extra == 1{
            exCheese = 2
        }
        if extra == 2{
            exCheese = 50
        }
        if type == 0{
            var burger1 = Burger(cook: cookrate, cheese: (0 + exCheese), pickles: 0, ketchup: 1.5, buns: true)
            burgerList.append(burger1)
        }
        else if type == 1{
            var burger2 = Burger(cook: cookrate, cheese: (2 + exCheese), pickles: 4, ketchup: 3.0, buns: true)
            burgerList.append(burger2)
        }
        else if type == 2{
            var burger3 = Burger(cook: cookrate, cheese: (40 + exCheese), pickles: 2, ketchup: 42.5, buns: false)
            burgerList.append(burger3)
        }
        
        var i = 1
        burgerList.forEach{
            print("Burger \(i): \($0.order)")
            i += 1
        }
    }
}



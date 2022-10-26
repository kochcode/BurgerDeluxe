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
    var burgerList = [Burger]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let components = burgerTitle.text!.components(separatedBy: " ")
    }
    
    @IBAction func purchase(_ sender: UIButton) {
        var type = burgerSegment.selectedSegmentIndex
        var cookrate = cookedSegment.selectedSegmentIndex
        if type == 0{
            var burger1 = Burger(cook: cookrate, cheese: 0, pickles: 0, ketchup: 1.5, buns: true)
            burgerList.append(burger1)
        }
        else if type == 1{
            var burger2 = Burger(cook: cookrate, cheese: 2, pickles: 4, ketchup: 3.0, buns: true)
            burgerList.append(burger2)
        }
        else if type == 2{
            var burger3 = Burger(cook: cookrate, cheese: 40, pickles: 2, ketchup: 42.5, buns: false)
            burgerList.append(burger3)
        }
        print(burgerList)
    }
    
    
}




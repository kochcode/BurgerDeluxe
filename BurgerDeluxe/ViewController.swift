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
        let bT = "\(burgerTitle.text!)"
        var save = ""
        var secSave = ""
        for (index, char) in bT.enumerated(){
            if index == 55{
                save = "\(char)"
            }
        }
    }
}



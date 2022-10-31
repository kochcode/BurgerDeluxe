//
//  ViewControllerOrder.swift
//  BurgerDeluxe
//
//  Created by KEVIN KOCH on 10/28/22.
//

import UIKit

class ViewControllerOrder: UIViewController {
    var orderList = [Burger]()
    @IBOutlet weak var orderOutlet: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print (orderList)
        var i = 1
        orderList.forEach{
            print("hi")
            orderOutlet.text = ("\n" + orderOutlet.text + "Burger \(i): \($0.order)")
            i += 1
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}

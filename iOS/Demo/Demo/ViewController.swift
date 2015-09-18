//
//  ViewController.swift
//  Demo
//
//  Created by YOUNG on 9/18/15.
//  Copyright © 2015 tux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var label: UILabel!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        label.leadingAnchor.constraintGreater
//    }

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let myButton: UIButton
//        myButton.addTarget(self, action: "buttonTapped", forControlEvents: .TouchUpInside)
//    }

    /* ! is the opposite of ? */
    @IBOutlet var label: UILabel!   // Crash if it doesn't work.
    var number:Int? = 0
    
    @IBAction func buttonTapped(button: UIButton) {
//        print("The button was tapped")
        label.text = "Hello Seyoung!"
    }
    
}


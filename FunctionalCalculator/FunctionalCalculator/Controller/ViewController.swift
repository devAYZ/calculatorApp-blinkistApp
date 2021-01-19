//
//  ViewController.swift
//  FunctionalCalculator
//
//  Created by Ayokunle on 18/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var calculatorBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculatorBtn.roundBtn()
    }
    
    @IBAction func currentPress(_ sender: UIButton){
        
    }
    
}


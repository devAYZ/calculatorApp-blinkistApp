//
//  ViewController.swift
//  FunctionalCalculator
//
//  Created by Ayokunle on 18/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bigZeroBtn: UIButton!
    @IBOutlet var allCalculatorBtn: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for calculatorBtn in allCalculatorBtn{
            calculatorBtn.roundBtn()
        }
        bigZeroBtn.layer.cornerRadius = 35.0
        bigZeroBtn.clipsToBounds = true
    }
    
    @IBAction func currentPress(_ sender: UIButton){
        
    }
    
}

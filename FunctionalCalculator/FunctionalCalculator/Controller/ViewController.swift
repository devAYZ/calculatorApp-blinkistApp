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
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for calculatorBtn in allCalculatorBtn{
            calculatorBtn.roundBtn()
        }
        bigZeroBtn.layer.cornerRadius = 35.0
        bigZeroBtn.clipsToBounds = true
        display.text = "0"
    }
    
    @IBAction func currentPress(_ sender: UIButton){
        if let sign = sender.title(for: .normal){
        
            switch sign{
            case "0":
                display.text! += "0"
            case "1":
                if display.text == "0"{
                    display.text! = "1"
                }else{
                    display.text! += "1"
                }
            case "2":
                if display.text == "0"{
                    display.text! = "2"
                }else{
                    display.text! += "2"
                }
            case "3":
                if display.text == "0"{
                    display.text! = "3"
                }else{
                    display.text! += "3"
                }
            case "4":
                if display.text == "0"{
                    display.text! = "4"
                }else{
                    display.text! += "4"
                }
            case "5":
                if display.text == "0"{
                    display.text! = "5"
                }else{
                    display.text! += "5"
                }
            case "6":
                if display.text == "0"{
                    display.text! = "6"
                }else{
                    display.text! += "6"
                }
            case "7":
                if display.text == "0"{
                    display.text! = "7"
                }else{
                    display.text! += "7"
                }
            case "8":
                if display.text == "0"{
                    display.text! = "8"
                }else{
                    display.text! += "8"
                }
            case "9":
                if display.text == "0"{
                    display.text! = "9"
                }else{
                    display.text! += "9"
                }
            case ".":
                display.text! += "."
            case "+":
                display.text! += "+"
            case "-":
                display.text! += "-"
            case "x":
                display.text! += "x"
            case "⁒":
                display.text! += "/"
            case "%":
                display.text! += "%"
            case "+/-":
                if display.text!.first != "-"{
                    display.text!.insert("-", at: display.text!.startIndex)
                }else{
                    display.text!.removeFirst()
                }
                
            default:
                display.text! += ""
            }
        }
    
    }
}

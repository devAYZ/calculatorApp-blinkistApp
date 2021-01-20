//
//  ViewController.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 18/01/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roundBuyBook.layer.cornerRadius = 25
        roundBuyBook.clipsToBounds = true
    }

    @IBAction func buyBook(_ sender: UIButton) {
    }
    
    @IBOutlet weak var roundBuyBook: UIButton!
}


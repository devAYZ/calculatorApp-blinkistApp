//
//  ViewController.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 18/01/2021.
//

import UIKit

class ABookFromHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        roundFirstBtn.layer.cornerRadius = 25
        roundFirstBtn.clipsToBounds = true
    }

    @IBOutlet weak var roundFirstBtn: UIButton!
    
}


//
//  RoundBorder.swift
//  FunctionalCalculator
//
//  Created by Ayokunle on 19/01/2021.
//

import UIKit

extension UIImageView{
    func roundImg(){
        self.layer.cornerRadius = self.frame.size.width / 2.0
        self.clipsToBounds = true
    }
}


extension UIButton{
    func roundBtn(){
        self.layer.cornerRadius = self.frame.size.width / 2.0
        self.clipsToBounds = true
    }
}

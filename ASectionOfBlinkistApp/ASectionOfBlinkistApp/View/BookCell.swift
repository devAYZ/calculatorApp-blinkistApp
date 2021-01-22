//
//  BookCell.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 19/01/2021.
//

import UIKit

class BookCell: UICollectionViewCell {
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    
    @IBOutlet weak var bookInfo: UILabel!
    
    
    func setup(with book: Book){
        bookImage.image = book.bookImage
        bookTitle.text = book.bookTitle
        bookInfo.text = book.bookInfo
    }
}

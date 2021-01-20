//
//  BookCell.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 19/01/2021.
//

import UIKit

class BookCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var thumbnailView: UIImageView!
    
    var book: Book? {
      didSet {
        thumbnailView.image = book?.thumbnail
        titleLabel.text = book?.title
        subtitleLabel.text = "\(book?.lessonCount ?? 0) Chapters"
      }
    }
    
}

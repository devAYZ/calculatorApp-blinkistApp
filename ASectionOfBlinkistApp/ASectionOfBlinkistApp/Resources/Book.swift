//
//  Book.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 20/01/2021.
//

import UIKit


 struct Book{
    let bookImage: UIImage
    let bookTitle: String
    let bookInfo: String
 
 }

let books: [Book] = [
    Book(bookImage: #imageLiteral(resourceName: "book9"), bookTitle: "7 Good Habits", bookInfo: "Audio Book ・3hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book1c"), bookTitle: "Elon Musk", bookInfo: "Audio Book ・9hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book4"), bookTitle: "Business Book", bookInfo: "Blinks ・3hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book3"), bookTitle: "Foreword, Be Happy", bookInfo: "Audio Book ・5hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book9"), bookTitle: "7 Good Habits, 2", bookInfo: "Audio Book ・3hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book7"), bookTitle: "Not Giving aFu*k!", bookInfo: "Visuals ・1.5hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book8"), bookTitle: "Good Habits", bookInfo: "Audio Book ・5hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book11"), bookTitle: "Trilogy (Foundation)", bookInfo: "Audio Book ・14 days"),
    Book(bookImage: #imageLiteral(resourceName: "book4"), bookTitle: "Business Book", bookInfo: "Blink ・7hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book2"), bookTitle: "Innovator's Dilemma", bookInfo: "Audio Book ・9hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book9"), bookTitle: "7 Good Habits, 3", bookInfo: "Audio Book ・3hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book7"), bookTitle: "Not Giving aFu*k!, 2", bookInfo: "Visuals ・9hrs"),
    Book(bookImage: #imageLiteral(resourceName: "book5"), bookTitle: "Night Reading Habits", bookInfo: "Audio Book ・59mins"),
]

//
//  Book.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 20/01/2021.
//

import UIKit

class Book: Hashable {
    var id = UUID()
    var title: String
    var thumbnail: UIImage?
    var lessonCount: Int
    var link: URL?
    
    init(title: String, thumbnail: UIImage? = nil, lessonCount: Int, link: URL?) {
      self.title = title
      self.thumbnail = thumbnail
      self.lessonCount = lessonCount
      self.link = link
    }
    // 1
    func hash(into hasher: inout Hasher) {
      // 2
      hasher.combine(id)
    }

    // 3
    static func == (lhs: Book, rhs: Book) -> Bool {
      lhs.id == rhs.id
    }

    
  }


// MARK: - Video Sample Data
extension Book {
  static let allBooks = [
    Book(
      title: "Badass Programmer \n How to become a Badass Programmer",
      thumbnail: UIImage(named: "bk8"),
      lessonCount: 37,
      link: URL(string: "https://www.google.com/")
    ),
    Book(
      title: "Programming with Decagon",
      thumbnail: UIImage(named: "bk7"),
      lessonCount: 29,
      link: URL(string: "https://www.google.com/")
    ),
    Book(
      title: "How to become Chika in 24 hours",
      thumbnail: UIImage(named: "bk3"),
      lessonCount: 46,
      link: URL(string: "https://www.google.com/")
    ),
    Book(
      title: "Advanced Software Engineer",
      thumbnail: UIImage(named: "bk4"),
      lessonCount: 44,
      link: URL(string: "https://www.google.com/")
    ),
    Book(
      title: "Festive and Festival",
      thumbnail: UIImage(named: "bk5"),
      lessonCount: 15,
      link: URL(string: "https://www.google.com/")
    ),
    Book(
      title: "Algorithm Master",
      thumbnail: UIImage(named: "bk6"),
      lessonCount: 39,
      link: URL(string: "https://www.google.com/")
    ),
    Book(
      title: "Complete PHP 10.2",
      thumbnail: UIImage(named: "bk2"),
      lessonCount: 26,
      link: URL(string: "https://www.google.com/")
    ),
    Book(
      title: "Dart/Flutter vs Swift/NS",
      thumbnail: UIImage(named: "bk1"),
      lessonCount: 33,
      link: URL(string: "https://www.google.com/")
    ),
    Book(
      title: "Connet with Ayo",
      thumbnail: UIImage(named: "bk9"),
      lessonCount: 31,
      link: URL(string: "https://www.google.com")
    )
  ]
}

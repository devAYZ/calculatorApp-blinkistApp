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
      title: "SwiftUI",
      thumbnail: UIImage(named: "bk1"),
      lessonCount: 37,
      link: URL(string: "https://google.com")
    ),
    Book(
      title: "Data Structures & Algorithms in Swift",
      thumbnail: UIImage(named: "bk2"),
      lessonCount: 29,
      link: URL(string: "https://google.com")
    ),
    Book(
      title: "Beginning ARKit",
      thumbnail: UIImage(named: "bk3"),
      lessonCount: 46,
      link: URL(string: "https://google.com")
    ),
    Book(
      title: "Fastlane for iOS",
      thumbnail: UIImage(named: "bk4"),
      lessonCount: 44,
      link: URL(string: "https://google.com")
    ),
    Book(
      title: "Machine Learning in iOS",
      thumbnail: UIImage(named: "bk5"),
      lessonCount: 15,
      link: URL(string: "https://google.com")
    ),
    Book(
      title: "Beginning RxSwift",
      thumbnail: UIImage(named: "bk6"),
      lessonCount: 39,
      link: URL(string: "https://google.com")
    ),
    Book(
      title: "Demystifying Views in iOS",
      thumbnail: UIImage(named: "bk4"),
      lessonCount: 26,
      link: URL(string: "https://google.com")
    ),
    Book(
      title: "Push Notifications",
      thumbnail: UIImage(named: "bk1"),
      lessonCount: 33,
      link: URL(string: "https://google.com")
    ),
    Book(
      title: "Reproducing Popular iOS Controls",
      thumbnail: UIImage(named: "bk4"),
      lessonCount: 31,
      link: URL(string: "https://google.com")
    )
  ]
}

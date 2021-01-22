//
//  HomeViewController.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 19/01/2021.
//

import UIKit
import SafariServices

class HomeViewController: UICollectionViewController {
    
       // MARK: - Properties
       private var bookList = Book.allBooks
       private lazy var dataSource = makeDataSource()

       
       // MARK: - Value Types
       enum Section {
         case main
       }
       
       typealias DataSource = UICollectionViewDiffableDataSource<Section, Book>
       typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Book>

       
       // MARK: - Functions
       func makeDataSource() -> DataSource {
         // 1
         let dataSource = DataSource(
           collectionView: collectionView,
           cellProvider: { (collectionView, indexPath, book) ->
             UICollectionViewCell? in
             // 2
             let cell = collectionView.dequeueReusableCell(
               withReuseIdentifier: "BookCell",
               for: indexPath) as? BookCell
             cell?.book = book
             return cell
         })
         return dataSource
       }
       
       // 1
       func applySnapshot(animatingDifferences: Bool = true) {
         // 2
         var snapshot = Snapshot()
         // 3
         snapshot.appendSections([.main])
         // 4
         snapshot.appendItems(bookList)
         // 5
         dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
       }


}

    

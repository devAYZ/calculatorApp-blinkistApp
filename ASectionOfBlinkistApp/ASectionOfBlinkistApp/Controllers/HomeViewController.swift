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


       // MARK: - Life Cycles
       override func viewDidLoad() {
         super.viewDidLoad()
         configureLayout()
         
         applySnapshot(animatingDifferences: false)
       }
       
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

     // MARK: - Layout Handling
     extension HomeViewController {
       private func configureLayout() {
         collectionView.collectionViewLayout = UICollectionViewCompositionalLayout(sectionProvider: { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
           let isPhone = layoutEnvironment.traitCollection.userInterfaceIdiom == UIUserInterfaceIdiom.phone
           let size = NSCollectionLayoutSize(
             widthDimension: NSCollectionLayoutDimension.fractionalWidth(1),
             heightDimension: NSCollectionLayoutDimension.absolute(isPhone ? 280 : 250)
           )
           let itemCount = isPhone ? 1 : 3
           let item = NSCollectionLayoutItem(layoutSize: size)
           let group = NSCollectionLayoutGroup.horizontal(layoutSize: size, subitem: item, count: itemCount)
           let section = NSCollectionLayoutSection(group: group)
           section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
           section.interGroupSpacing = 10
           return section
         })
       }
       
       override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
         super.viewWillTransition(to: size, with: coordinator)
         coordinator.animate(alongsideTransition: { context in
           self.collectionView.collectionViewLayout.invalidateLayout()
         }, completion: nil)
       }
     }

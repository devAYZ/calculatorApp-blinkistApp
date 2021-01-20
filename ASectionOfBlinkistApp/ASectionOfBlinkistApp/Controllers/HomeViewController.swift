//
//  HomeViewController.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 19/01/2021.
//

import UIKit
import SafariServices

class HomeViewController: UICollectionViewController {
    
 /*

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(collectionView)

        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        100
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Book", for: indexPath) as? BookCell else{
            fatalError("Unable to dequeue Book Cell")
        }
        
        return cell
    }

    
    */
    
    
    

       // MARK: - Properties
       private var bookList = Book.allBooks
       private var searchController = UISearchController(searchResultsController: nil)
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
         view.backgroundColor = .white
         configureSearchController()
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


     // MARK: - UICollectionViewDelegate
     extension HomeViewController{
       override func collectionView(
         _ collectionView: UICollectionView,
         didSelectItemAt indexPath: IndexPath
       ) {
         
         guard let book = dataSource.itemIdentifier(for: indexPath) else {
           return
         }

         guard let link = book.link else {
           print("Invalid link")
           return
         }
         let safariViewController = SFSafariViewController(url: link)
         present(safariViewController, animated: true, completion: nil)
       }
     }

     // MARK: - UISearchResultsUpdating Delegate
     extension HomeViewController: UISearchResultsUpdating {
       func updateSearchResults(for searchController: UISearchController) {
         bookList = filteredVideos(for: searchController.searchBar.text)
         collectionView.reloadData()
       }
       
       func filteredVideos(for queryOrNil: String?) -> [Book] {
         let books = Book.allBooks
         guard
           let query = queryOrNil,
           !query.isEmpty
           else {
             return books
         }
         return books.filter {
           return $0.title.lowercased().contains(query.lowercased())
         }
       }
       
       func configureSearchController() {
         searchController.searchResultsUpdater = self
         searchController.obscuresBackgroundDuringPresentation = false
         searchController.searchBar.placeholder = "Search fo Books"
         navigationItem.searchController = searchController
         definesPresentationContext = true
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

     // MARK: - SFSafariViewControllerDelegate Implementation
     extension HomeViewController: SFSafariViewControllerDelegate {
       func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
         controller.dismiss(animated: true, completion: nil)
       }
     }






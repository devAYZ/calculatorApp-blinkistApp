//
//  HomeViewController.swift
//  ASectionOfBlinkistApp
//
//  Created by Ayokunle on 19/01/2021.
//

import UIKit

class HomeViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    


}

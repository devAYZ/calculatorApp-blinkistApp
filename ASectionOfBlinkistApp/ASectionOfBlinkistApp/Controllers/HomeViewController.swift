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
    
    


}

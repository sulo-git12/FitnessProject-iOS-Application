//
//  HomeController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 1/18/23.
//

import UIKit
//import Foundation

class HomeController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
        

//    private var collectionView: UICollectionView = UICollectionView()
 private var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        
        layout.itemSize = CGSize(width: (view.frame.size.width/3)-4, height: (view.frame.size.width/3)-4)
        
        collectionView = UICollectionView(frame: .zero,
                                          collectionViewLayout: layout)
        
        guard let collectionView  = collectionView else {
            return
        }
        
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath)
            as! CustomCollectionViewCell
//      cell.contentView.backgroundColor = .systemTeal
        cell.configure(label: "Customer \(indexPath.row)")
        
        return cell
    }

    

}

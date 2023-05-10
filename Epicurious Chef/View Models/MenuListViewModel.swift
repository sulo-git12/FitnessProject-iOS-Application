//
//  MenuListViewModel.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 1/30/23.
//

import Foundation
import UIKit

final class MenuListViewModel: NSObject {
    
    func fetchMenu () {
//        RMService.shared.execute(.listCharacterRequests, expecting: RMGetAllCharacterResponse.self) {
//
//                result in
//            switch result {
//            case .success(self model):
//                print("Total: "+String(model.info.pages))
//                print("Page result count: "+String(model.results.count))
//            case .failure(let error):
//                print(String(describing: error))
//            }
//        }
        
        
    }
}

extension MenuListViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor  = .systemGreen
        return cell
    }
    
    private func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeFormatAt indexPath: IndexPath) -> CGSize {
        
        let bounds = UIScreen.main.bounds
        let width = (bounds.width-30)/5
        return CGSize(
            width: width,
            height: width * 1.5)
    }
}

//
//  MenuListView.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 1/30/23.
//

import UIKit

final class MenuListView: UIView {

    private let viewModel = MenuListViewModel()
    
    
    private let spinner: UIActivityIndicatorView = {
        
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    private let collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isHidden = true
        collectionView.alpha = 0
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
//        backgroundColor = .systemBlue
        addSubviews(collectionView, spinner)
        addConstraints()
        spinner.startAnimating()
        viewModel.fetchMenu()
        setUpCollectionView()

    }
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    private func addConstraints() {
        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 100),
            spinner.heightAnchor.constraint(equalToConstant: 100),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    private func setUpCollectionView() {
      
        collectionView.dataSource = viewModel
        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
            
            self.spinner.stopAnimating()
            
            self.collectionView.isHidden = false
//            self.collectionView.alpha = 1
            UIView.animate(withDuration: 0.4){
                self.collectionView.alpha = 1
            }
        })
    }
}

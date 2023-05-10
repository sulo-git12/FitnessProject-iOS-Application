//
//  DetailsViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/9/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //MARK: - UI Components
    private let exceriseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let excerciseNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setUpUI()
        setValues()
    }
    
    //MARK: - UI Setup
    private func setUpUI(){
        view.addSubview(exceriseImageView)
        view.addSubview(excerciseNameLabel)
        
        NSLayoutConstraint.activate([
            exceriseImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
            exceriseImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            exceriseImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            exceriseImageView.heightAnchor.constraint(equalToConstant: 350),
            
            excerciseNameLabel.topAnchor.constraint(equalTo: exceriseImageView.bottomAnchor, constant: 5),
            excerciseNameLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            excerciseNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
     
            
        ])
        
    }
    
    private func setValues(){
        exceriseImageView.image  = UIImage(named: "detail")
        excerciseNameLabel.text = "E1 ergerg s"
    }
    
}

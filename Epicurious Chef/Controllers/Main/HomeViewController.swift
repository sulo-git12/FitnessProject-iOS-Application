//
//  HomeViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/11/23.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK: - UI Components
    private let userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let userWelcomeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(rgb: 0xe0fe10)
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let exerciseCollectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(ExerciseCollectionViewCell.self,
                                       forCellWithReuseIdentifier: ExerciseCollectionViewCell.cellIdentifier)
            return collectionView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setUpUI()
        setValues()
        
        exerciseCollectionView.delegate = self
        exerciseCollectionView.dataSource = self
    }
    
    //MARK: - UI Setup
    private func setUpUI(){
        view.addSubview(userImageView)
        view.addSubview(userWelcomeLabel)
        view.addSubview(userNameLabel)
        view.addSubview(exerciseCollectionView)
       
        
        NSLayoutConstraint.activate([
            userImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
            userImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            userImageView.heightAnchor.constraint(equalToConstant: 100),
            userImageView.widthAnchor.constraint(equalToConstant: 100),
            
            userWelcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            userWelcomeLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            userWelcomeLabel.leftAnchor.constraint(equalTo: userImageView.rightAnchor, constant: 15),
     
            userNameLabel.topAnchor.constraint(equalTo: userWelcomeLabel.bottomAnchor, constant: 5),
            userNameLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            userNameLabel.leftAnchor.constraint(equalTo: userImageView.rightAnchor,  constant: 15),

            exerciseCollectionView.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 10),
            exerciseCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            exerciseCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }
    
    private func setValues(){
        userImageView.image  = UIImage(named: "images")
        userWelcomeLabel.text = "Welcome Back.."
        userNameLabel.text = "Sulochana Madasekara"
        
    }
    
}




extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
                        withReuseIdentifier: ExerciseCollectionViewCell.cellIdentifier,
                        for: indexPath
                    ) as? ExerciseCollectionViewCell else {
                        fatalError("Unsupported Cell")
                    }
                    cell.setUpValues(exerciseName: "Squats",  exerciseImageUrl: "excercice-image")
                    return cell

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 20) / 2
        return CGSize(width: width,
                      height: width * 0.8)
    }

}
            

//
//  CollectionViewCell.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/12/23.
//

import UIKit

class ExerciseCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "ExerciseCollectionViewCell"
    
    private let exerciseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius=20
        imageView.clipsToBounds=true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let calLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    //  MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemBackground
        
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private func setUpConstraints(){
        
        contentView.addSubview(exerciseImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(calLabel)
        
        
        NSLayoutConstraint.activate([
            exerciseImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            exerciseImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            exerciseImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            exerciseImageView.heightAnchor.constraint(equalToConstant: 145),
            
            nameLabel.topAnchor.constraint(equalTo: exerciseImageView.bottomAnchor, constant: 5),
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
            nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0),
            
            calLabel.topAnchor.constraint(equalTo: exerciseImageView.bottomAnchor, constant: 5),
            calLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0),
        ])
    }
    
    public func setUpValues(exerciseName: String, exerciseImageUrl: String)
        {
            self.exerciseImageView.image = UIImage(named: exerciseImageUrl)
            self.nameLabel.text = exerciseName
            self.calLabel.text="37🍽️"
        }
}

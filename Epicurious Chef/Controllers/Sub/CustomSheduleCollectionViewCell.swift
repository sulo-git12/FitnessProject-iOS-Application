//
//  CustomSheduleCollectionViewCell.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/19/23.
//

import UIKit

class CustomScheduleExerciseTableViewCell: UITableViewCell {
    
    private let exerciseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let exerciseNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let repLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    private let equipmentLabel: UILabel = {
//        let label = UILabel()
//        label.textColor = .secondaryLabel
//        label.textAlignment = .left
//        label.font = .systemFont(ofSize: 20, weight: .regular)
//        label.lineBreakMode = .byWordWrapping
//        label.numberOfLines = 0
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    //MARK: - Variables
        static let identifier = "CustomScheduleExerciseTableViewCell"
    
    
    //MARK: - LifeCycle
            override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
                super.init(style: style, reuseIdentifier: reuseIdentifier)
                
            
                addSubviews()
                setUpConstraints()
            }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    //  MARK: - Add Subviews to contentView
       private func addSubviews(){
           contentView.addSubview(exerciseImageView)
           contentView.addSubview(exerciseNameLabel)
           contentView.addSubview(repLabel)
//           contentView.addSubview(equipmentLabel)
       }
       
       //  MARK: - Setup UI Constraints
       private func setUpConstraints(){
           
           NSLayoutConstraint.activate([
               exerciseImageView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
               exerciseImageView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
               exerciseImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
               exerciseImageView.widthAnchor.constraint(equalToConstant: 145),
               
               exerciseNameLabel.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor ,constant: 1),
               exerciseNameLabel.leadingAnchor.constraint(equalTo: exerciseImageView.trailingAnchor, constant: 10),
               exerciseNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
               
               repLabel.topAnchor.constraint(equalTo: exerciseNameLabel.bottomAnchor ,constant: 20),
               repLabel.leadingAnchor.constraint(equalTo: exerciseImageView.trailingAnchor, constant: 10),
               repLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
               repLabel.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor, constant: -2)
               
//               equipmentLabel.topAnchor.constraint(equalTo: repLabel.bottomAnchor ,constant: 20),
//               equipmentLabel.leadingAnchor.constraint(equalTo: exerciseImageView.trailingAnchor, constant: 10),
//               equipmentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
//               equipmentLabel.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor, constant: -1)
           ])
           
       }
       
       //MARK: - Set Up Values
    public func setUpValues(exerciseName: String, exerciseImageUrl: String)
       {
           exerciseImageView.image = UIImage(named: exerciseImageUrl)
           exerciseNameLabel.text = exerciseName
           repLabel.text = "2 Set & 4 Reps"
//           equipmentLabel.text = "barbell, some bumper plates "
           
       }
}

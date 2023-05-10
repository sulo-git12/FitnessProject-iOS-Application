//
//  CustomCollectionViewCell.swift
//  Epicurious Chef
//
//  Created by Fixel Dev on 1/26/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier  = "CustomCollectionViewCell"
    
    private let myMenuImageView: UIImageView = {
        let  imageView  = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.contentMode = .scaleAspectFit
        
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    private let myMenuLabel: UILabel = {
        let  label  = UILabel()
        label.text = "custom"
    
        label.textAlignment = .center
        return label
        
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemRed
        contentView.addSubview(myMenuLabel)
        contentView.addSubview(myMenuImageView)
        contentView.clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(Coder:) has not been implemented yet")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        myMenuLabel.frame = CGRect(x: 5,
                                   y: contentView.frame.size.height-50,
                                   width: contentView.frame.size.width-10,
                                   height: 50)
        
        myMenuImageView.frame = CGRect(x: 5, y: 0, width: contentView.frame.size.width-10,
                                       height: contentView.frame.size.height-50)

    }
    
    public func configure(label: String) {
        myMenuLabel.text = label
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myMenuLabel.text = nil
    }
}

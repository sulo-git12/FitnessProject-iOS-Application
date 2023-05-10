//
//  AuthHeaderView.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 1/23/23.
//

import UIKit

class AuthHeaderView: UIView {
    // MARK: - UI Components
    
    private let logoimageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.image = UIImage(named: "logo")
        iv.tintColor = .white
        return iv
        
        
    }()
    
    private let titleLabel: UILabel = {
        let label =  UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.text = "Error"
        return label
    }()
    
    
    private let subtitleLabel: UILabel = {
        let label =  UILabel()
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.text = "Error"
        return label
    }()
    
    
    
    // MARK: - LifeCycle
    
    
    init(title: String, subTitle: String){
        super.init(frame: .zero)
        self.titleLabel.text = title
        self.subtitleLabel.text = subTitle
        self.setupUI()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    
    private func setupUI() {
        
        self.addSubview(logoimageView)
        self.addSubview(titleLabel)
        self.addSubview(subtitleLabel)
        
        logoimageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            self.logoimageView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 30),
            self.logoimageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoimageView.widthAnchor.constraint(equalToConstant: 90),
            
            self.logoimageView.heightAnchor.constraint(equalTo: logoimageView.widthAnchor),
            
            self.titleLabel.topAnchor.constraint(equalTo: logoimageView.bottomAnchor, constant: 19),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            
            self.subtitleLabel.topAnchor.constraint(equalTo: logoimageView.bottomAnchor, constant: 12),
            self.subtitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.subtitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            
            //            UIView.topAnchor.constraint(equalTo:  self.view?.topAnchor)
//            UIView.bottomAnchor.constraint(equalTo: self.view?.bottomAnchor)
//            UIView.leadingAnchor.constraint(equalTo: self.view?.leadingAnchor)
//            UIView.trailingAnchor.constraint(equalTo: self.view?.trailingAnchor)
//            UIView.centerXAnchor.constraint(equalTo: self.view?.centerXAnchor)
//            UIView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            
            
        ])
    
    
}
    


    
// MARK: - UI Setup

    
    

}

//
//  StartupViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/5/23.
//

import UIKit

class StartupViewController: UIViewController {
    
    //MARK: - Variables
    
    
    //MARK: - UI Components
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image  = UIImage(named: "gym1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel2: UILabel = {
        let label = UILabel()
        label.text = "Login to access your account."
        label.textColor = .white
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        let color = UIColor(rgb: 0xe0fe10)
        button.backgroundColor = color
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        
        loginButton.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
        
    }
    
    
    //MARK: - UI Setup
    private func setUpUI(){
        title = "Login"
        //view.backgroundColor = (.init(coder: #e0fe10))
        
        view.addSubview(backgroundImageView)
        view.addSubview(titleLabel2)
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            backgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            titleLabel2.rightAnchor.constraint(equalTo: view.rightAnchor),
            titleLabel2.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 75),
            titleLabel2.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -10),
            
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 350),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            
        ])
    }
    
    
    
    
    @objc private func didTapLogin(){
        let vc = UserDetailsViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
}


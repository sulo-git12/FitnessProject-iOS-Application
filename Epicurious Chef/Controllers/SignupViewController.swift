//
//  SignupViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 2/14/23.
//

import UIKit

class SignupViewController: UIViewController {

    //MARK: - Variables
    private let UserId = "Sulochana"
    
    //MARK: - UI Components
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "Background Signup")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 35, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titleLabel2: UILabel = {
        let label = UILabel()
        label.text = "Create new account"
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 19, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameText: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Name"
        textField.backgroundColor = .secondarySystemBackground
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 15
        return textField
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email Address"
        label.textColor = .black
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailText: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email Address"
        textField.backgroundColor = .secondarySystemBackground
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 15
        return textField
    }()
    
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .black
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let passwordText: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.textContentType = .oneTimeCode
        textField.backgroundColor = .secondarySystemBackground
        textField.layer.cornerRadius = 15
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let confirmpasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Confirm Password"
        label.textColor = .black
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let confirmpasswordText: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Confirm Password"
        textField.backgroundColor = .secondarySystemBackground
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 15
        return textField
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("SignUp", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        let color = UIColor(rgb: 0x0C3D28)
        button.backgroundColor = color
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Already have an account? sign in", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        
        signUpButton.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    //MARK: - UI Setup
    private func setUpUI(){
        title = "SignUp"
        view.backgroundColor = .systemBackground
        
        view.addSubview(backgroundImageView)
        view.addSubview(titleLabel)
        view.addSubview(titleLabel2)
        view.addSubview(nameLabel)
        view.addSubview(nameText)
        view.addSubview(emailLabel)
        view.addSubview(emailText)
        view.addSubview(passwordLabel)
        view.addSubview(passwordText)
        view.addSubview(confirmpasswordLabel)
        view.addSubview(confirmpasswordText)
        view.addSubview(signUpButton)
        view.addSubview(signInButton)
        
        
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            backgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 30),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            
            titleLabel2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 69),
            titleLabel2.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30),
            titleLabel2.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.bottomAnchor.constraint(equalTo: nameText.topAnchor,constant: -5),
            nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 75),
            nameLabel.heightAnchor.constraint(equalToConstant: 30),
            
            nameText.bottomAnchor.constraint(equalTo: emailLabel.topAnchor ,constant: -2),
            nameText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameText.widthAnchor.constraint(equalToConstant: 250),
            nameText.heightAnchor.constraint(equalToConstant: 50),
            
            emailLabel.bottomAnchor.constraint(equalTo: emailText.topAnchor,constant: -10),
            emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 75),
            emailLabel.heightAnchor.constraint(equalToConstant: 30),
            
            emailText.bottomAnchor.constraint(equalTo: passwordLabel.topAnchor ,constant: -3),
            emailText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailText.widthAnchor.constraint(equalToConstant: 250),
            emailText.heightAnchor.constraint(equalToConstant: 50),
            
            passwordLabel.bottomAnchor.constraint(equalTo: passwordText.topAnchor ,constant: -15),
            passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 75),
            passwordLabel.heightAnchor.constraint(equalToConstant: 30),
            
            passwordText.bottomAnchor.constraint(equalTo: confirmpasswordLabel.topAnchor ,constant: -25),
            passwordText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordText.widthAnchor.constraint(equalToConstant: 250),
            passwordText.heightAnchor.constraint(equalToConstant: 50),
            
            confirmpasswordLabel.bottomAnchor.constraint(equalTo: confirmpasswordText.topAnchor ,constant: -2),
            confirmpasswordLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 75),
            confirmpasswordLabel.heightAnchor.constraint(equalToConstant: 30),
            
            confirmpasswordText.bottomAnchor.constraint(equalTo: signUpButton.topAnchor ,constant: -40),
            confirmpasswordText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmpasswordText.widthAnchor.constraint(equalToConstant: 250),
            confirmpasswordText.heightAnchor.constraint(equalToConstant: 50),
            
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
            signUpButton.widthAnchor.constraint(equalToConstant: 200),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -125),
            
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            signInButton.widthAnchor.constraint(equalToConstant: 280),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -50),
        ])
        
        
    }
    
    // MARK: - Selectors
    @objc private func didTapSignUp(){
        print("didTapSignUp")
        
    }
    
    @objc private func didTapSignIn(){
        print("didTapSignIn")
        let vc = SignupViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
}

//
//  LoginViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 4/13/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Variables
    var UserModel = [ExerciseModel]()
    
    //MARK: - UI Components
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "BackGround Login")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
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
        label.text = "Login to access your account."
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        textField.placeholder = "  Email Address"
        textField.text = "Akash"
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
        textField.placeholder = "  Password"
        textField.text = "Akash@1234444"
        textField.textContentType = .oneTimeCode
        textField.backgroundColor = .secondarySystemBackground
        textField.layer.cornerRadius = 15
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let forgetPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Forget Password ?"
        label.textColor = .systemGreen
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        let color = UIColor(rgb: 0x0C3D28)
        button.backgroundColor = color
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("New user ? Signup here", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        
        loginButton.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    //MARK: - UI Setup
    private func setUpUI(){
        title = "Login"
        view.backgroundColor = .systemBackground
        
        view.addSubview(backgroundImageView)
        view.addSubview(titleLabel)
        view.addSubview(titleLabel2)
        view.addSubview(loginButton)
        view.addSubview(emailLabel)
        view.addSubview(emailText)
        view.addSubview(passwordLabel)
        view.addSubview(passwordText)
        view.addSubview(forgetPasswordLabel)
        view.addSubview(signUpButton)
        
        
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
            
            
            emailLabel.bottomAnchor.constraint(equalTo: emailText.topAnchor,constant: -10),
            emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 75),
            emailLabel.heightAnchor.constraint(equalToConstant: 30),
            
            emailText.bottomAnchor.constraint(equalTo: passwordLabel.topAnchor ,constant: -15),
            emailText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailText.widthAnchor.constraint(equalToConstant: 250),
            emailText.heightAnchor.constraint(equalToConstant: 50),
            
            passwordLabel.bottomAnchor.constraint(equalTo: passwordText.topAnchor ,constant: -10),
            passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 75),
            passwordLabel.heightAnchor.constraint(equalToConstant: 30),
            
            passwordText.bottomAnchor.constraint(equalTo: forgetPasswordLabel.topAnchor ,constant: -5),
            passwordText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordText.widthAnchor.constraint(equalToConstant: 250),
            passwordText.heightAnchor.constraint(equalToConstant: 50),
            
            forgetPasswordLabel.bottomAnchor.constraint(equalTo: loginButton.topAnchor,constant: -60),
            forgetPasswordLabel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -70),
            forgetPasswordLabel.heightAnchor.constraint(equalToConstant: 30),
            
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 250),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -200),
            
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
            signUpButton.widthAnchor.constraint(equalToConstant: 200),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -50),
        ])
    }
    
    // MARK: - Functions
    @objc private func didTapLogin(){
//        
//        let email = emailText.text?.trimmingCharacters(in: .whitespaces)
//        let password = passwordText.text?.trimmingCharacters(in: .whitespaces)
//        
//        if (email!.isEmpty || password!.isEmpty) {
//            let alert = UIAlertController(title: "Error", message: "Required Username or Password", preferredStyle: UIAlertController.Style.alert)
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//            return
//        }
//        
//        let endpoint = EndPoint.exercises + "/\(email!)/\(password!)"
//        
//        APIRequest.shared.getUsers(endpoint: endpoint) {
//            result in
//            
//            DispatchQueue.main.async {
//                
//                switch result {
//                    
//                case .success(let model):
//                    self.UserModel = model
////                    print(self.UserModel)
//                    if (self.UserModel.count == 1) {
//                        let vc = RMTabbarController()
//                        vc.modalPresentationStyle = .fullScreen
//                        self.present(vc, animated: false, completion: nil)
//                    }
//                    else {
//                        let alert = UIAlertController(title: "Error", message: "Incorrect Username or Password", preferredStyle: UIAlertController.Style.alert)
//                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                        self.present(alert, animated: true, completion: nil)
//                    }
//                    
//                case .failure(let error):
//                    let alert = UIAlertController(title: "Error", message: String(describing: error), preferredStyle: UIAlertController.Style.alert)
//                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                    self.present(alert, animated: true, completion: nil)
//                    
//                }
//            }
//            
//        }
    }
    
    @objc private func didTapSignUp(){
        let vc = SignupViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    
}

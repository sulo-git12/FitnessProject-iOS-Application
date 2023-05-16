//
//  BMICalculatorViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/12/23.
//

import UIKit

class UserDetailsViewController: UIViewController{
    
    private let upperBMILabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 30, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .label
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let usernameText: UITextField = {
        let usernameTextField = UITextField()
        usernameTextField.placeholder = "Enter your username"
        usernameTextField.textColor = .label
        usernameTextField.font = .systemFont(ofSize: 20, weight: .regular)
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.keyboardType = .decimalPad
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        return usernameTextField
        
    }()
    
    private let genderLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .label
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let genderText: UITextField = {
        let genderTextField = UITextField()
        genderTextField.placeholder = "Enter your gender"
        genderTextField.font = .systemFont(ofSize: 20, weight: .regular)
        genderTextField.borderStyle = .roundedRect
        genderTextField.keyboardType = .decimalPad
        genderTextField.translatesAutoresizingMaskIntoConstraints = false
        return genderTextField
        
    }()
    
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ageText: UITextField = {
        let ageTextField = UITextField()
        ageTextField.placeholder = "Enter your Age"
        ageTextField.font = .systemFont(ofSize: 20, weight: .regular)
        ageTextField.borderStyle = .roundedRect
        ageTextField.keyboardType = .decimalPad
        ageTextField.translatesAutoresizingMaskIntoConstraints = false
        return ageTextField
        
    }()
    
    private let heightLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let heightText: UITextField = {
        let heightTextField = UITextField()
        heightTextField.placeholder = "Enter your Height"
        heightTextField.font = .systemFont(ofSize: 20, weight: .regular)
        heightTextField.borderStyle = .roundedRect
        heightTextField.keyboardType = .decimalPad
        heightTextField.translatesAutoresizingMaskIntoConstraints = false
        return heightTextField
        
    }()
    
    private let weightLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weightText: UITextField = {
        let weightTextField = UITextField()
        weightTextField.placeholder = "Enter your Weight"
        weightTextField.font = .systemFont(ofSize: 20, weight: .regular)
        weightTextField.borderStyle = .roundedRect
        weightTextField.keyboardType = .decimalPad
        weightTextField.translatesAutoresizingMaskIntoConstraints = false
        return weightTextField
        
    }()
    
    private let fitnessgoalsLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let fitnessgoalsText: UITextField = {
        let fitnessgoalsTextField = UITextField()
        fitnessgoalsTextField.placeholder = "Select your Fitness Goal"
        fitnessgoalsTextField.font = .systemFont(ofSize: 20, weight: .regular)
        fitnessgoalsTextField.borderStyle = .roundedRect
        fitnessgoalsTextField.keyboardType = .decimalPad
        fitnessgoalsTextField.translatesAutoresizingMaskIntoConstraints = false
        return fitnessgoalsTextField
        
    }()
    
    private let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save Details", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        let color = UIColor(rgb: 0xe0fe10)
        button.backgroundColor = color
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setValues()
        setUpUI()
    }
    
    
    //MARK: - UI Setup
    private func setUpUI(){
        view.addSubview(upperBMILabel)
        view.addSubview(usernameLabel)
        view.addSubview(usernameText)
        view.addSubview(genderLabel)
        view.addSubview(genderText)
        view.addSubview(ageLabel)
        view.addSubview(ageText)
        view.addSubview(heightLabel)
        view.addSubview(heightText)
        view.addSubview(weightLabel)
        view.addSubview(weightText)
        view.addSubview(fitnessgoalsLabel)
        view.addSubview(fitnessgoalsText)
        view.addSubview(saveButton)
        
        
        NSLayoutConstraint.activate([
            
            upperBMILabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85),
            upperBMILabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            upperBMILabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            
            usernameLabel.topAnchor.constraint(equalTo: upperBMILabel.bottomAnchor, constant: 20),
            usernameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            usernameLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            usernameText.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 10),
            usernameText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            usernameText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            genderLabel.topAnchor.constraint(equalTo: usernameText.bottomAnchor, constant: 10),
            genderLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            genderLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            genderText.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 5),
            genderText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            genderText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            ageLabel.topAnchor.constraint(equalTo: genderText.bottomAnchor, constant: 10),
            ageLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            ageLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            ageText.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 5),
            ageText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            ageText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            heightLabel.topAnchor.constraint(equalTo: ageText.bottomAnchor, constant: 10),
            heightLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            heightLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            heightText.topAnchor.constraint(equalTo: heightLabel.bottomAnchor, constant: 5),
            heightText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            heightText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            weightLabel.topAnchor.constraint(equalTo: heightText.bottomAnchor, constant: 10),
            weightLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            weightLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            weightText.topAnchor.constraint(equalTo: weightLabel.bottomAnchor, constant: 5),
            heightText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            heightText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            fitnessgoalsLabel.topAnchor.constraint(equalTo: weightText.bottomAnchor, constant: 10),
            fitnessgoalsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            fitnessgoalsLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            fitnessgoalsText.topAnchor.constraint(equalTo: fitnessgoalsLabel.bottomAnchor, constant: 5),
            fitnessgoalsText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            fitnessgoalsText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.widthAnchor.constraint(equalToConstant: 350),
            saveButton.heightAnchor.constraint(equalToConstant: 50),
            saveButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            
        ])
        
    }
    
    private func setValues(){
        
        upperBMILabel.text  = "User details Page Be Smile.😊"
        usernameLabel.text = "Enter Your Name"
        genderLabel.text = "Enter Your Gender"
        ageLabel.text = "Enter Your Age"
        heightLabel.text = "Enter Your Height"
        weightLabel.text = "Enter Your Weight"
        fitnessgoalsLabel.text = "Enter Your Fitness Goal"
        
    }
    
}


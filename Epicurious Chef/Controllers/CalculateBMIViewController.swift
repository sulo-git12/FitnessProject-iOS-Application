//
//  CalculateBMIViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/15/23.
//

import UIKit


class CalculateBMIViewController: UIViewController {
    
  
   
    
    private let uppercalBMILabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 30, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let calBMILabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let calBMIText: UITextField = {
        let calBMITextField = UITextField()
        calBMITextField.placeholder = "Select your Fitness Goal"
        calBMITextField.font = .systemFont(ofSize: 20, weight: .regular)
        calBMITextField.borderStyle = .roundedRect
        calBMITextField.keyboardType = .decimalPad
        calBMITextField.translatesAutoresizingMaskIntoConstraints = false
        return calBMITextField
        
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        return tableView
    }()

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemBackground
        
        setValues()
        setUpUI()
        
//        self.tableView.delegate = self
//        self.tableView.delegate = self

        title = "Suggested fitness plans"
        
        
       
    }
    
    private func setUpUI(){
       
        view.addSubview(uppercalBMILabel)
        view.addSubview(calBMILabel)
        view.addSubview(calBMIText)
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            
            
            uppercalBMILabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85),
            uppercalBMILabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            uppercalBMILabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            
            calBMILabel.topAnchor.constraint(equalTo: uppercalBMILabel.bottomAnchor, constant: 20),
            calBMILabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            calBMILabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            calBMIText.topAnchor.constraint(equalTo: calBMILabel.bottomAnchor, constant: 10),
            calBMIText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            calBMIText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            tableView.topAnchor.constraint(equalTo: calBMIText.bottomAnchor, constant: 10),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
//            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
//            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
//            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
//            
        ])
        
    }
    
    private func setValues(){
        
        uppercalBMILabel.text  = "Suggested fitness plans for tour BMI 😊"
        calBMILabel.text = "Your calculated BMI"
        
            
    }
    
}



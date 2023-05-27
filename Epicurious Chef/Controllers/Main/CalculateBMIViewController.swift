//
//  CalculateBMIViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/15/23.
//

import UIKit


class CalculateBMIViewController: UIViewController {
    
    
    var ExcersiseImage = ["Pullups", "Deadlift", "Squat", "Barbell Bench Press", "Bicep Curls", "Bench Press"]
    
    var ExcersiseName = ["Pullups", "Deadlift", "Squat", "Barbell Bench Press", "Bicep Curls", "Bench Press"]
    
    var CustomScheduleExerciseData = [ExerciseModel]()
    
    private let customScheduleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let suggestFitnessPlanTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(CalculateBMICollectionViewCell.self, forCellReuseIdentifier: CalculateBMICollectionViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let uppercalBMILabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor(rgb: 0xe0fe10)
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
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemBackground
//        title = "Suggested fitness plans"
        
        setValues()
        setUpUI()
                
    }
    
    private func setUpUI(){
        
        view.addSubview(uppercalBMILabel)
        view.addSubview(calBMILabel)
        //        view.addSubview(calBMIText)
        view.addSubview(customScheduleLabel)
        view.addSubview(suggestFitnessPlanTableView)
        
        
        suggestFitnessPlanTableView.delegate = self
        suggestFitnessPlanTableView.dataSource = self
       
        NSLayoutConstraint.activate([
            
            uppercalBMILabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85),
            uppercalBMILabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            uppercalBMILabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            
            calBMILabel.topAnchor.constraint(equalTo: uppercalBMILabel.bottomAnchor, constant: 5),
            calBMILabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            calBMILabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            customScheduleLabel.topAnchor.constraint(equalTo: calBMILabel.bottomAnchor, constant: 10),
            customScheduleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            customScheduleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 5),
            
            suggestFitnessPlanTableView.topAnchor.constraint(equalTo: customScheduleLabel.bottomAnchor, constant: 5),
            suggestFitnessPlanTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            suggestFitnessPlanTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            suggestFitnessPlanTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            //            calBMIText.topAnchor.constraint(equalTo: calBMILabel.bottomAnchor, constant: 10),
            //            calBMIText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            //            calBMIText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            //            tableView.topAnchor.constraint(equalTo: calBMIText.bottomAnchor, constant: 10),
            //            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            //            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            //            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            //            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            //            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            //            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            //
        ])
        
    }
    
    private func setValues(){
        
        uppercalBMILabel.text  = "Suggested fitness plans for your BMI 😊"
        calBMILabel.text = "Your calculated BMI is = 26"
        customScheduleLabel.text = "Custom Schedule.."
        
        
    }
    
}


extension CalculateBMIViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ExcersiseName.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CalculateBMICollectionViewCell.identifier,
            for: indexPath
        ) as? CalculateBMICollectionViewCell else {
            fatalError("Unsupported Cell")
        }
        
        cell.setUpValues(exerciseName: ExcersiseName[indexPath.row],  exerciseImageUrl: ExcersiseImage[indexPath.row])
        return cell
    }
    
}



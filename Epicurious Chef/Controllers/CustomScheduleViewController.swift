//
//  CustomScheduleViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/19/23.
//

import UIKit

class CustomScheduleViewController: UIViewController {
    var ExcersiseImage = ["Deadlift", "Bench Press", "Squat", "Pullups", "Barbell Bench Press", "Bicep Curls"]
    
    var ExcersiseName = ["Deadlift", "Bench Press", "Squat", "Pullups", "Barbell Bench Press", "Bicep Curls"]
    
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
    
    private let customScheduleTableView: UITableView = {
           let tableView = UITableView()
           tableView.backgroundColor = .systemBackground
           tableView.allowsSelection = true
           tableView.register(CustomScheduleExerciseTableViewCell.self, forCellReuseIdentifier: CustomScheduleExerciseTableViewCell.identifier)
           tableView.translatesAutoresizingMaskIntoConstraints = false
           return tableView
       }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setUpUI()
        setValues()

        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - UI Setup
    private func setUpUI(){
        view.addSubview(customScheduleLabel)
        view.addSubview(customScheduleTableView)
        
        
        customScheduleTableView.delegate = self
                customScheduleTableView.dataSource = self
        
        NSLayoutConstraint.activate([

            customScheduleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
            customScheduleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            customScheduleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 5),
           
            customScheduleTableView.topAnchor.constraint(equalTo: customScheduleLabel.bottomAnchor, constant: 5),
                       customScheduleTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
                       customScheduleTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
                       customScheduleTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
    
        ])
        
        }
    
    private func setValues(){
        
        customScheduleLabel.text = "Custom Schedule.."
       
    }

}




extension CustomScheduleViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ExcersiseName.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CustomScheduleExerciseTableViewCell.identifier,
            for: indexPath
        ) as? CustomScheduleExerciseTableViewCell else {
            fatalError("Unsupported Cell")
        }
        
        cell.setUpValues(exerciseName: ExcersiseName[indexPath.row],  exerciseImageUrl: ExcersiseImage[indexPath.row])
        
        return cell
    }

}


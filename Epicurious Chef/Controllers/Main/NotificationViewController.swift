//
//  NotificationViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/21/23.
//

import UIKit

class NotificationViewController: UIViewController {

    
    private let uppernotificationLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor(rgb: 0xe0fe10)
        label.font = .systemFont(ofSize: 33, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let notification1Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let notification2Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .label
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    private let notification3Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .label
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    
    private let notification4Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    private let notification5Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    
//    private let notification6Label: UILabel = {
//        let label = UILabel()
//        label.textAlignment = .left
//        label.font = .systemFont(ofSize: 22, weight: .regular)
//        label.lineBreakMode = .byWordWrapping
//        label.numberOfLines = 0
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//
//
//    private let notification7Label: UILabel = {
//        let label = UILabel()
//        label.textAlignment = .left
//        label.font = .systemFont(ofSize: 24, weight: .regular)
//        label.lineBreakMode = .byWordWrapping
//        label.numberOfLines = 0
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    
    
   //MARK: - Lifecycle
    override func viewDidLoad() {
        
        view.backgroundColor = .systemBackground
        
        setValues()
        setUpUI()
    }
    
    
    //MARK: - UI Setup
    private func setUpUI(){
        view.addSubview(uppernotificationLabel)
        view.addSubview(notification1Label)
        view.addSubview(notification2Label)
        
        view.addSubview(notification3Label)
       
        view.addSubview(notification4Label)
       
        view.addSubview(notification5Label)
        
//        view.addSubview(notification6Label)
//
//        view.addSubview(notification7Label)
//
        
        
        
        NSLayoutConstraint.activate([
            
            uppernotificationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85),
            uppernotificationLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            uppernotificationLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            
            notification1Label.topAnchor.constraint(equalTo: uppernotificationLabel.bottomAnchor, constant: 50),
            notification1Label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            notification1Label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            notification2Label.topAnchor.constraint(equalTo: notification1Label.bottomAnchor, constant: 50),
            notification2Label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            notification2Label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            notification3Label.topAnchor.constraint(equalTo: notification2Label.bottomAnchor, constant: 50),
            notification3Label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            notification3Label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            notification4Label.topAnchor.constraint(equalTo: notification3Label.bottomAnchor, constant: 50),
            notification4Label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            notification4Label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            notification5Label.topAnchor.constraint(equalTo: notification4Label.bottomAnchor, constant: 50),
            notification5Label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
            notification5Label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
//            notification6Label.topAnchor.constraint(equalTo: notification5Label.bottomAnchor, constant: 5),
//            notification6Label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
//            notification6Label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
//
//            notification7Label.topAnchor.constraint(equalTo: notification6Label.bottomAnchor, constant: 10),
//            notification7Label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5),
//            notification7Label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5),
            
            
            
            
           
            
            
        ])
        
    }
    
    private func setValues(){
        
        uppernotificationLabel.text  = "Notifications "
        notification1Label.text = "📩 Time to work out! Get moving and complete your daily workout for today."
        notification2Label.text = "📩 Congratulations! You've reached a new milestone. Keep up the great work!"
        notification3Label.text = "📩 Your new workout plan is ready. Check it out!"
        notification4Label.text = "📩 You're doing great in the fitness challenge! You've completed 72% of the challenge. Keep pushing!"
        notification5Label.text = "📩 Your workout time will start in next 10 mins."
//        notification6Label.text = "📩 It's time to review your progress. Check your weekly schedule to see how you've improved."
//        notification7Label.text = "📩 You have not complete Your Fitness Goal today"
        
    }
    
}



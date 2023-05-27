//
//  DetailsViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/9/23.
//
import UIKit
import AVKit
import AVFoundation

class DetailsViewController: UIViewController {
    
    let avPlayerViewController = AVPlayerViewController()
    var avPlayer:AVPlayer?
    
    //MARK: - UI Components
    private let exceriseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let excerciseNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let excerciseCategoryLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let excerciseEquipmentLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let targetMuscleGroupsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let repsAndStepsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()



    private let timeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let addToCustSheduleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add to Custom Shedule", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        let color = UIColor(rgb: 0xe0fe10)
        button.backgroundColor = color
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let playVideoButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play exercise Video", for: .normal)
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
        view.backgroundColor = .systemBackground
        playVideoButton.addTarget(self, action: #selector(didTapPlayViedoButton), for: .touchUpInside)
        setUpUI()
        setValues()
    }
    
    @objc private func didTapPlayViedoButton(){
        // Video player
        let urlPathString:String? = Bundle.main.path(forResource:  "excercise video", ofType: "mp4")
        if let urlPath = urlPathString {
            let videoUrl = NSURL(fileURLWithPath: urlPath)
            
            self.avPlayer = AVPlayer(url: videoUrl as URL)
            self.avPlayerViewController.player = self.avPlayer
        }
        
        self.present(self.avPlayerViewController, animated: true) {
            self.avPlayerViewController.player?.play()
        }
    }
    
    //MARK: - UI Setup
    private func setUpUI(){
        view.addSubview(exceriseImageView)
        view.addSubview(excerciseNameLabel)
        view.addSubview(excerciseCategoryLabel)
        view.addSubview(excerciseEquipmentLabel)
        view.addSubview(targetMuscleGroupsLabel)
        view.addSubview(repsAndStepsLabel)
        view.addSubview(timeLabel)
        view.addSubview(addToCustSheduleButton)
        view.addSubview(playVideoButton)
        
        NSLayoutConstraint.activate([
            exceriseImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            exceriseImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            exceriseImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            exceriseImageView.heightAnchor.constraint(equalToConstant: 330),
            
            excerciseNameLabel.topAnchor.constraint(equalTo: exceriseImageView.bottomAnchor, constant: 5),
            excerciseNameLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            excerciseNameLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
     
            excerciseCategoryLabel.topAnchor.constraint(equalTo: excerciseNameLabel.bottomAnchor, constant: 5),
            excerciseCategoryLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            excerciseCategoryLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            
            excerciseEquipmentLabel.topAnchor.constraint(equalTo: excerciseCategoryLabel.bottomAnchor, constant: 5),
            excerciseEquipmentLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            excerciseEquipmentLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            
            targetMuscleGroupsLabel.topAnchor.constraint(equalTo: excerciseEquipmentLabel.bottomAnchor, constant: 5),
            targetMuscleGroupsLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            targetMuscleGroupsLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            

            repsAndStepsLabel.topAnchor.constraint(equalTo: targetMuscleGroupsLabel.bottomAnchor, constant: 5),
            repsAndStepsLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            repsAndStepsLabel.leftAnchor.constraint(equalTo: view.leftAnchor),

            timeLabel.topAnchor.constraint(equalTo: repsAndStepsLabel.bottomAnchor, constant: 5),
            timeLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            timeLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            
            
            playVideoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playVideoButton.widthAnchor.constraint(equalToConstant: 350),
            playVideoButton.heightAnchor.constraint(equalToConstant: 50),
            playVideoButton.bottomAnchor.constraint(equalTo: addToCustSheduleButton.topAnchor, constant: -10),
            
            
            addToCustSheduleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addToCustSheduleButton.widthAnchor.constraint(equalToConstant: 350),
            addToCustSheduleButton.heightAnchor.constraint(equalToConstant: 50),
            addToCustSheduleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
        
    }
    
    private func setValues(){
        exceriseImageView.image  = UIImage(named: "detail")
//        excerciseNameLabel.text = "Excercise Name"
//        excerciseCategoryLabel.text = "Excercise Category"
//        excerciseEquipmentLabel.text = "Equipment Needed"
//        targetMuscleGroupsLabel.text = "Targeted Muscle Groups"
//        repsAndStepsLabel.text = "Reps And Sets"
        excerciseNameLabel.text = "Deadlift"
        excerciseCategoryLabel.text = "Muscle building"
        excerciseEquipmentLabel.text = "barbell, some bumper plates and a pair of bar collars."
        targetMuscleGroupsLabel.text = "glutes, hamstrings, core, back, and trapezius muscles."
        repsAndStepsLabel.text = "4 sets of 6-12 reps"
        timeLabel.text = "24 mins"
    }
    
}

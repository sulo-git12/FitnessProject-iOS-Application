//
//  WorkoutDetailsViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 5/16/23.
//

import UIKit
import AVKit
import AVFoundation

class WorkoutDetailsViewController: UIViewController {
    
    let avPlayerViewController = AVPlayerViewController()
    var avPlayer:AVPlayer?
    
    private let playVideoButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play Excercise Video", for: .normal)
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
        setUpUI()
        
        playVideoButton.addTarget(self, action: #selector(didTapPlayViedoButton), for: .touchUpInside)
        
        
    }
    
    override func didReceiveMemoryWarning() {
               super.didReceiveMemoryWarning()
           }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    private func playVideo() {
        
        
        
        // worked code line
        //        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "excercise video", ofType: "mp4")!))
        //        let layer  = AVPlayerLayer(player: player)
        //        layer.frame = view.bounds
        //        layer.videoGravity = .resizeAspectFill
        //        view.layer.addSublayer(layer)
        //        player.volume = 0
        //        player.play()
        
        
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
    
    
    private func setUpUI(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(playVideoButton)
        
        NSLayoutConstraint.activate([
            
            playVideoButton.heightAnchor.constraint(equalToConstant: 50),
            playVideoButton.widthAnchor.constraint(equalToConstant: 200),
            playVideoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playVideoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -50),
        ])
        
    }
    
}

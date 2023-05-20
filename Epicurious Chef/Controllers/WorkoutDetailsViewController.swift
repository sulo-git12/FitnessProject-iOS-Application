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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
               super.viewDidAppear(animated)
               playVideo()
           }
       private func playVideo() {
//               guard let path = Bundle.main.path(forResource: "video", ofType:"mp4") else {
//                   debugPrint("video.m4v not found")
//                   return
//               }
//               let player = AVPlayer(url: URL(fileURLWithPath: path))
           
           
           // worked code line
           let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "excercise video", ofType: "mp4")!))
           let layer  = AVPlayerLayer(player: player)
           layer.frame = view.bounds
           layer.videoGravity = .resizeAspectFill
           view.layer.addSublayer(layer)
           player.volume = 0
           player.play()
           
     
           
           
           
//               let playerController = AVPlayerViewController()
//               playerController.player = player
//               present(playerController, animated: true) {
//                   player.play()
               }
           }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




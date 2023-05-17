//
//  User.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 2/20/23.
//

import Foundation

// MARK: - Exercise Model

struct ExerciseModel: Codable{
    let id: String
    let name: String
    let group: String
    let type: String
    let difficultyLevel: Int
    let targetMuscle: [String]
    let sets: Int
    let reps: Int
    let rest: Int?
    let time: Int
    let calories: Int
    let imageUrl: String
    let videoUrl: String
    let description: String?
}






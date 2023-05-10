//
//  User.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 2/20/23.
//

import Foundation

// MARK: - User Model
struct User: Codable {
    
    let username: String
    let fullName: String
    let gender: String?
    let location: Location
    let mobileNo: String?
    let email: String?
    let password: String
}

struct Location: Codable {
    let latitude: Double
    let longitude: Double
}









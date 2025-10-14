//
//  User.swift
//  SwiftfulSwiftUIinPracticeApp
//
//  Created by jyotirmoy_halder on 12/10/25.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height, weight: Double
    
    static var mock: User {
            User(
                id: 444,
                firstName: "Nick",
                lastName: "Sarno",
                age: 76,
                email: "hi@toyou.com",
                phone: "",
                username: "",
                password: "",
                image: Constants.randomImage,
                height: 160,
                weight: 100
            )
    }
}



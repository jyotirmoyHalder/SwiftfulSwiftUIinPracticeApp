//
//  Product.swift
//  SwiftfulSwiftUIinPracticeApp
//
//  Created by jyotirmoy_halder on 12/10/25.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]?
    let total, skip, limit: Int?
}

struct Product: Identifiable, Codable, Equatable {
    let id: Int
    let title: String?
    let category: String?
    let description: String?
    let price: Double?
    let discountPercentage: Double?
    let reviews: [Review]?
    let stock: Int?
    let brand: String?
    let thumbnail: String?
    let images: [String]?
    
    
    let averageRating: Double?
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case price
        case discountPercentage
        case reviews
        case stock
        case brand
        case category
        case thumbnail
        case images
        
        case averageRating = "averageRating"

    }
    
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id
    }
    
}

// MARK: - Review
struct Review: Codable {
    let rating: Int?
    let comment: String?
    let date: CreatedAt?
    let reviewerName: String?
    let reviewerEmail: String?

    enum CodingKeys: String, CodingKey {
        case rating
        case comment
        case date = "created_at"   // 👈 change this to your actual JSON key
        case reviewerName = "reviewer_name"
        case reviewerEmail = "reviewer_email"
    }
}

// MARK: - CreatedAt
enum CreatedAt: String, Codable {
    case the20250430T094102053Z = "2025-04-30T09:41:02.053Z"
}

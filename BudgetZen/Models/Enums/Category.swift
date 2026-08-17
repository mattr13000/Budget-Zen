//
//  Category.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

enum Category: String, CaseIterable, Identifiable, Codable {
        case housing
        case groceries
        case restaurants
        case transportation
        case utilities
        case entertainment
        case shopping
        case health
        case subscriptions
        
        case salary
        case investments
        
        case other
    
    var id: String { rawValue }
    
    var displayName: String {
        switch self {
        case .housing: return "Housing"
        case .groceries: return "Groceries"
        case .restaurants: return "Restaurant"
        case .transportation: return "Transportation"
        case .utilities: return "Utilities"
        case .entertainment: return "Entertainment"
        case .shopping: return "Shopping"
        case .health: return "Health"
        case .subscriptions: return "Subscriptions"
        case .salary: return "Salary"
        case .investments: return "Investments"
        case .other: return "Other"
        }
    }
    
    var iconName: String {
            switch self {
            case .housing: return "house.fill"
            case .groceries: return "cart.fill"
            case .restaurants: return "fork.knife"
            case .transportation: return "car.fill"
            case .utilities: return "bolt.fill"
            case .entertainment: return "popcorn.fill"
            case .shopping: return "bag.fill"
            case .health: return "cross.case.fill"
            case .subscriptions: return "creditcard.fill"
            case .salary: return "banknote.fill"
            case .investments: return "chart.line.uptrend.xyaxis"
            case .other: return "ellipsis.circle.fill"
            }
        }
}

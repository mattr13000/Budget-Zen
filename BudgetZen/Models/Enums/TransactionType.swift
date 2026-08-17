//
//  TransactionType.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import Foundation
import SwiftUI

enum TransactionType: String, CaseIterable, Identifiable, Codable {
    case expense
    case income
    
    var id: String { rawValue }
    
    var displayName: String {
        switch self {
        case .expense: return "Expense"
        case .income: return "Income"
        }
    }
    
    var sign: String {
        switch self {
        case .expense: return "-"
        case .income: return "+"
        }
    }
    
    var color: Color {
        switch self {
        case .expense: return .red
        case .income: return .green
        }
    }
    
    var multiplier: Int {
        switch self {
        case .expense: return -1
        case .income: return 1
        }
    }
}

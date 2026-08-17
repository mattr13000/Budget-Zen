//
//  Transaction.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import Foundation

struct Transaction: Identifiable {
    var id: UUID = UUID()
    var title: String
    var category: String
    var type: String
    var date: String
}

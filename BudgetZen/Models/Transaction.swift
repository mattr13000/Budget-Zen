//
//  Transaction.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import Foundation

struct Transaction: Identifiable {
    let id: UUID = UUID()
    var title: String
    var amount: Int
    var category: Category
    var type: TransactionType
    var date: Date
}

extension Transaction {
    static let transaction: Transaction = Transaction(
        title: "Abonnement tel",
        amount: 20,
        category: .subscriptions,
        type: .expense,
        date: Date()
    )
    
    static var transactions: [Transaction] = [
        Transaction(
            title: "Abonnement tel",
            amount: 20,
            category: .subscriptions,
            type: .expense,
            date: Date()
        ),
        
        Transaction(
            title: "Resto la ciotat",
            amount: 80,
            category: .restaurants,
            type: .expense,
            date: Date()
        ),
        Transaction(
            title: "Cadeau Didier",
            amount: 50,
            category: .other,
            type: .expense,
            date: Date()
        ),
        Transaction(
            title: "Jeu à gratter",
            amount: 10,
            category: .entertainment,
            type: .income,
            date: Date()
        ),
        Transaction(
            title: "Salaire aout",
            amount: 3000,
            category: .salary,
            type: .income,
            date: Date()
        ),
        
    ]
}

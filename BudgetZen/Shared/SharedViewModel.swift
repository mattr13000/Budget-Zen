//
//  SharedViewModel.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import Foundation

@Observable
class SharedViewModel {
    var transactions: [Transaction]
    
    init() {
        transactions = Transaction.transactions
    }
    
    var transactionTotal: Int {
        transactions.reduce(0){$0 + $1.amount}
    }
    
    var spendingsTotal: Int {
        transactions.filter({$0.type == .expense}).reduce(0){$0 + $1.amount}
    }
    
    var incomesTotal: Int {
        transactions.filter({$0.type == .income}).reduce(0){$0 + $1.amount}
    }
    
    var transactionsCount: Int {
        transactions.count
    }
    
    var balanceText: String {
        if spendingsTotal > incomesTotal {
            return "Your balance is negative."
        }
        else {
            return "Your balance is positive."
        }
    }
}

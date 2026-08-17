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
    
    
}

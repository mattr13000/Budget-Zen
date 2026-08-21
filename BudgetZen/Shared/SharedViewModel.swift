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
    
    func registerTransaction(
        transactionTitle: String,
        amount: Int,
        date: Date,
        category: Category,
        transactionType: TransactionType,
    )
    {
        transactions.append(Transaction(title: transactionTitle, amount: amount, category: category, type: transactionType, date: date))
    }
    
    var balance: Int {
        transactions.reduce(0){$0 + $1.amount}
    }
    
    var formattedBalance: String {
        transactions.reduce(0){$0 + $1.amount}.formatted()
    }
    
    var spendingsTotal: Int {
        transactions.filter({$0.type == .expense}).reduce(0){$0 + $1.amount}
    }
    
    var formattedSpendingsTotal: String {
        transactions.filter({$0.type == .expense}).reduce(0){$0 + $1.amount}.formatted()
    }
    
    var incomesTotal: Int {
        transactions.filter({$0.type == .income}).reduce(0){$0 + $1.amount}
    }
    
    var formattedIncomesTotal: String {
        transactions.filter({$0.type == .income}).reduce(0){$0 + $1.amount}.formatted()
    }
    
    var formattedIncomesCount: String {
        transactions
            .filter({$0.type == .income})
            .count
            .formatted()
    }
    
    var formattedSpendingsCount: String {
        transactions
            .filter({$0.type == .expense})
            .count
            .formatted()
    }
    
    var formattedTransactionsCount: String {
        transactions.count.formatted()
    }
    
    var formattedHighestIncome: String {
        if let maxIncome = transactions
            .filter({$0.type == .income})
            .map({$0.amount})
            .max()?
            .formatted()
        {
            let formattedText = "+\(maxIncome)€"
            return formattedText
        } else {
            return "0€"
        }
    }
    
    var formattedHighestSpending: String {
        if let maxIncome = transactions
            .filter({$0.type == .expense})
            .map({$0.amount})
            .max()?
            .formatted()
        {
            let formattedText = "+\(maxIncome)€"
            return formattedText
        } else {
            return "0€"
        }
    }
    
    var formattedAverageSpending: String {
        let temp = transactions.filter({$0.type == .expense})
        let formattedTemp = (temp.reduce(0){$0 + $1.amount} / temp.count).formatted()
        return "\(formattedTemp)€"
    }
    
    var balanceText: String {
        if spendingsTotal > incomesTotal {
            return "Your balance is negative."
        }
        else {
            return "Your balance is positive."
        }
    }
    
    var statistics: [Statistic] {[
        Statistic(label: String(localized: .totalTransactionsCount), displayValue: formattedTransactionsCount),
        Statistic(label: String(localized: .totalIncomesCount), displayValue: formattedIncomesCount),
        Statistic(label: String(localized: .totalSpendingsCount), displayValue: formattedSpendingsCount),
        Statistic(label: String(localized: .totalIncomes), displayValue: formattedIncomesTotal),
        Statistic(label: String(localized: .totalSpendings), displayValue: formattedSpendingsTotal),
        Statistic(label: String(localized: .balance), displayValue: formattedBalance),
        Statistic(label: String(localized: .highestIncome), displayValue: formattedHighestIncome),
        Statistic(label: String(localized: .highestSpending), displayValue: formattedHighestSpending),
        Statistic(label: String(localized: .averageSpending), displayValue: formattedAverageSpending),
        Statistic(label: String(localized: .mostUsedCategory), displayValue: "")
    ]}
}

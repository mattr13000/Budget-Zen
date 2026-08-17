//
//  TransactionView.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import SwiftUI

struct TransactionsView: View {
    @Environment(SharedViewModel.self) var sharedVM
    var body: some View {
        
        NavigationStack{
            ScrollView {
                ForEach(sharedVM.transactions) {
                    transaction in
                    TransactionCard(
                        title: transaction.title,
                        amount: transaction.amount,
                        category: transaction.category,
                        type: transaction.type,
                        date: transaction.date
                    )
                }
            }
            .navigationTitle("Transactions")
            
        }
    }
}

#Preview {
    TransactionsView()
        .environment(SharedViewModel())
}

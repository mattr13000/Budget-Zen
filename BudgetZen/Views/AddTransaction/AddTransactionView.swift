//
//  AddTransactionView.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import SwiftUI

struct AddTransactionView: View {
    @State private var transactionTitle: String = ""
    @State private var amount: String = ""
    @State private var date: Date = Date()
    var body: some View {
        NavigationStack {
            Form {
                TextField("Titre", text: $transactionTitle)
                TextField("Amount", text: $amount)
                DatePicker("Date", selection: $date)
            }
        }
    }
}

#Preview {
    AddTransactionView()
}

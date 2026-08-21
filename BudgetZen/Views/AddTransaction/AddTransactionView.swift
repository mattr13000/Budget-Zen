//
//  AddTransactionView.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import SwiftUI

struct AddTransactionView: View {
    
    @Environment(SharedViewModel.self) var sharedVM
    @State private var transactionTitle: String = ""
    @State private var amount: Int = 0
    @State private var date: Date = Date()
    @State private var category: Category = .housing
    @State private var transactionType: TransactionType = .expense
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Label")) {
                    TextField("Enter a label", text: $transactionTitle)
                }
                
                Section(header: Text("Amount")) {
                    TextField("Enter an amount", value: $amount, format: .number)
                        .keyboardType(.numberPad)
                }
                Section(header: Text("Category")) {
                    Picker("", selection: $category) {
                        ForEach(Category.allCases) { cat in
                            Text(cat.rawValue.capitalized).tag(cat)
                        }
                    }
                    .labelsHidden()
                }
                Section(header: Text("Type")) {
                    Picker("Type", selection: $transactionType) {
                        ForEach(TransactionType.allCases) { cat in
                            Text(cat.rawValue.capitalized).tag(cat)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section(header: Text("Date")) {
                    DatePicker("Date", selection: $date)
                }
            }
            .navigationTitle("Add a transaction")
            AddTransactionButton(onSend: {
                sharedVM.registerTransaction(
                    transactionTitle: transactionTitle,
                    amount: amount,
                    date: date,
                    category: category,
                    transactionType: transactionType)})
            .disabled(transactionTitle.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
            .padding()
        }
    }
}

#Preview {
    AddTransactionView()
        .environment(SharedViewModel())
}

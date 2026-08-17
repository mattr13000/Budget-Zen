//
//  TabBarView.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            Tab("Transactions", systemImage: "list.bullet") {
                TransactionsView()
            }
            Tab("Add transction", systemImage: "plus") {
                AddTransactionView()
            }
            Tab("Statistics", systemImage: "chart.line.uptrend.xyaxis") {
                StatisticsView()
            }
        }
    }
}

#Preview {
    TabBarView()
}

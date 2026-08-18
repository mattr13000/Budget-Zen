//
//  HomeView.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import SwiftUI

struct HomeView: View {
    @Environment(SharedViewModel.self) var sharedVM
    var body: some View {
        NavigationStack{
            VStack {
                VStack(alignment: .leading) {
                    Text("Hello User")
                        .font(.title)
                        .fontWeight(.bold)
                    Text(sharedVM.balanceText)
                        .font(.title3)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                HomeMainCard(balance: sharedVM.transactionTotal)
                HStack(alignment: .center) {
                    IncomesCard(incomeTotal: sharedVM.incomesTotal)
                    SpendingsCard(spendingsTotal: sharedVM.spendingsTotal)
                }
                
                Text("\(sharedVM.transactions.count) registered transactions.")
                    .font(.title2)
                    .padding(.top)
                Spacer()
            }
            .navigationTitle("Budget Zen")
            
            .padding()
            
        }
    }
}

#Preview {
    HomeView()
        .environment(SharedViewModel())
}

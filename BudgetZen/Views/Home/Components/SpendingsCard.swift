//
//  SpendingsCard.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 18/08/2026.
//

import SwiftUI

struct SpendingsCard: View {
    var spendingsTotal: Int
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack {
                Text("Total Spendings:")
                Text("-\(String(spendingsTotal))€")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.red)
            }
            .padding()
            
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 4)
    }
}

#Preview {
    SpendingsCard(spendingsTotal: 50)
}

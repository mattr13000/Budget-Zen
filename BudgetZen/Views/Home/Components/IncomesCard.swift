//
//  IncomeCard.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 18/08/2026.
//

import SwiftUI

struct IncomesCard: View {
    var incomeTotal: Int
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack {
                Text("Total Incomes:")
                Text("+\(String(incomeTotal))€")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
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
    IncomesCard(incomeTotal: 60)
}

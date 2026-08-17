//
//  HomeTotalsCard.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 18/08/2026.
//

import SwiftUI

struct HomeTotalsCard: View {
    var incomeTotal: Int
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack {
                Text("Current balance:")
                Text("\(String(incomeTotal))€")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(50)
            
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(20)
        .padding()
        .shadow(radius: 4)
    }
}

#Preview {
    HomeTotalsCard(incomeTotal: 50)
}

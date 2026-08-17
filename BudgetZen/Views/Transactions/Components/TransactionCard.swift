//
//  TransactionCard.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import SwiftUI

struct TransactionCard: View {
    var title: String
    var amount: Int
    var category: Category
    var type: TransactionType
    var date: Date
    
    var body: some View {
        HStack{
            Rectangle()
                .fill(type.color)
                .frame(width: 6)
            VStack(spacing: 10) {
                HStack {
                    Text(title)
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text("\(type.sign) \(amount) €")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(type.color)
                }
                HStack {
                    Text(category.displayName)
                    Spacer()
                    Text(type.displayName)
                        .padding(3)
                        .background(type.color)
                        .cornerRadius(5)
                        
                        .foregroundStyle(.white)
                    Text(date.formatted(date: .numeric, time: .omitted))
                }
            }
            .padding()
            
        }
        .background(.white)
        .frame(maxHeight: 80)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 2)
    }
}

#Preview {
    TransactionCard(title: "Abonnement tel", amount: 20, category: .subscriptions, type: .expense, date: Date())
}

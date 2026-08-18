//
//  HomeMainCard.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 18/08/2026.
//

import SwiftUI

struct HomeMainCard: View {
    
    var balance: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack {
                Text("Current balance:")
                Text("\(balance)€")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(50)
            
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(20)
        .padding(.init(top: 20, leading: 0, bottom: 20, trailing: 0))
        .shadow(radius: 4)
    }
}

#Preview {
    HomeMainCard(balance: "50")
}

//
//  AdviceCard.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 18/08/2026.
//

import SwiftUI

struct AdviceCard: View {
    var advice: String = "Ici un futur avis (ceci n'est pas un conseil financier)"
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack {
                Text(advice)
                    .font(.title3)

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
    AdviceCard()
}

//
//  AddTransactionButton.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 21/08/2026.
//

import SwiftUI

struct AddTransactionButton: View {
    @Environment(\.isEnabled) var isEnabled
    var onSend: () -> Void
    var body: some View {
        Button {
            onSend()
        }
        label: {
            Text("Add the transaction")
                .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(isEnabled ? .blue : .gray)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    //AddTransactionButton()
}

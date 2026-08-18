//
//  StatisticsListItem.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 18/08/2026.
//

import SwiftUI

struct StatisticsListItem: View {
    var label: String
    var formattedValue: String
    var body: some View {
        HStack{
            Text(label)
            Spacer()
            Text(formattedValue)
        }
    }
}

#Preview {
    StatisticsListItem(label: "", formattedValue: "")
}

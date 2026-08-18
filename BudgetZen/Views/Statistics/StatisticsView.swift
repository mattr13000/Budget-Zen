//
//  StatisticsView.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import SwiftUI

struct StatisticsView: View {
    
    @Environment(SharedViewModel.self) var sharedVM
    
    var body: some View {
        NavigationStack {
            VStack {
                List(sharedVM.statistics) {
                    statistic in
                    StatisticsListItem(label: statistic.label, formattedValue: statistic.displayValue)
                }
            AdviceCard()
                Spacer()
            }
            .navigationTitle("Statistics")
        }
    }
}

#Preview {
    StatisticsView()
        .environment(SharedViewModel())
}

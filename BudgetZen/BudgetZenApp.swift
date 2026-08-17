//
//  BudgetZenApp.swift
//  BudgetZen
//
//  Created by Apprenant 77 on 17/08/2026.
//

import SwiftUI

@main
struct BudgetZenApp: App {
    @State var sharedVM: SharedViewModel = SharedViewModel()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environment(sharedVM)
        }
    }
}

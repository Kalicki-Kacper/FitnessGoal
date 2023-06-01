//
//  FitnessGoalApp.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 16/04/2023.
//

import SwiftUI

@main
struct FitnessGoalApp: App {
    @StateObject var mealsViewModel = AddNewMealViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(mealsViewModel)
        }
    }
}

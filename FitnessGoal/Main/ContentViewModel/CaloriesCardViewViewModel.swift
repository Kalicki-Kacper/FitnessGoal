//
//  ContentViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation


extension CaloriesCardView {
     class CaloriesCardViewViewModel: ObservableObject {

         
 
        @Published var baseGoalCalories: Int = 1500
        @Published var excerciseBurnCalories: Int = 300
        @Published var progress: Double = 0
         
         func calculateProgress(_ currentCalories: Double, _ maxCalories: Double) -> Double {
             self.progress = currentCalories / maxCalories
             return progress
         }
    }
    
}

//
//  ContentViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation
import HealthKit


extension CaloriesCardView {
     class CaloriesCardViewViewModel: ObservableObject {

         
         @Published var baseGoalCalories: Int = 1500
         @Published var activeKcal: [ActiveCaloriesModel] = []
         
         func calculateProgress(_ currentCalories: Double, _ maxCalories: Double) -> Double {
             return (currentCalories / maxCalories)
         }
         
         func updateActiveKcalFromStatistic(_ statsCollection: HKStatisticsCollection) {
             let startDate = Calendar.current.startOfDay(for: Date())
             let daily = DateComponents(day: 1)
             
             statsCollection.enumerateStatistics(from: startDate, to: Date()) { (statistic, stop) in
                 DispatchQueue.main.async {
                     let count = Int(statistic.sumQuantity()?.doubleValue(for: .calorie()) ?? 0)
                     
                     let activeKcal = ActiveCaloriesModel(kcalBurned: Double(count), date: statistic.startDate)
                     self.activeKcal.append(activeKcal)
                 }
             }
         }
         
     }
}

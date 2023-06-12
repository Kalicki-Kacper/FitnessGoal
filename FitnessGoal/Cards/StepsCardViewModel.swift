//
//  StepsCardViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 07/06/2023.
//

import Foundation
import HealthKit


class StepsCardViewModel: ObservableObject {
    
    @Published var steps: [StepsModel] = []
    
    func updateProgressFromStatistics(_ statCollection: HKStatisticsCollection) {
        let startDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
        let endDate = Calendar.current.date(byAdding: .day, value: -1, to: Date())!

        let daily = DateComponents(day: 1)
        
        statCollection.enumerateStatistics(from: startDate, to: endDate) { (statistic, stop) in
            DispatchQueue.main.async {
                let count = Int(statistic.sumQuantity()?.doubleValue(for: .count()) ?? 0)
                
                let step = StepsModel(count: Int(count), date: statistic.endDate)
                self.steps.append(step)
            }
        }
    }
}

//
//  StepsCardViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 06/06/2023.
//

import Foundation
import HealthKit


class HealthStore: ObservableObject {
    
    var healthStore: HKHealthStore?
    var query: HKStatisticsCollectionQuery?
    
    init() {
        if HKHealthStore.isHealthDataAvailable() {
            healthStore = HKHealthStore()
        }
    }
    
    func calculateStep(completion: @escaping (HKStatisticsCollection?) -> Void? ) {
        let stepsType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        
        let startDate = Calendar.current.startOfDay(for: Date())
        let daily = DateComponents(day: 1)
        let predicte = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictEndDate)
        
        
        query = HKStatisticsCollectionQuery(quantityType: stepsType, quantitySamplePredicate: predicte, options: .cumulativeSum, anchorDate: Date(), intervalComponents: daily)
        query!.initialResultsHandler = { query, statsCollection, error in
            completion(statsCollection)
        }
        
        if let healthStore = healthStore, let query = self.query {
            healthStore.execute(query )
        }
    }
    
    func activeCalories(completion: @escaping(HKStatisticsCollection?) -> Void?) {
        let kcalType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!
        
        let startDate = Calendar.current.startOfDay(for: Date())
        let daily = DateComponents(day: 1)
        let predicte = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictEndDate)
        
        query = HKStatisticsCollectionQuery(quantityType: kcalType, quantitySamplePredicate: predicte, options: .cumulativeSum, anchorDate: Date(), intervalComponents: daily)
        query!.initialResultsHandler = { query, statsCollection, error in
            completion(statsCollection)
        }
        
        if let healthStore = healthStore, let query = self.query {
            healthStore.execute(query )
        }
    }
    
    
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        let setRequest = Set([
            HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!,
            HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        ])
        
        guard let healthStore = self.healthStore else { return completion(false) }
   
        healthStore.requestAuthorization(toShare: [], read: setRequest) { (success, error) in
            completion(success)
        }
    }
    
}

//
//  SettingsViewViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation
import SwiftUI


 class SettingsViewModel: ObservableObject {
    
    @Published var user: UserData = UserData(age: 0, height: 0, weight: 0, calories: 0)
    
    
    init() {
//        let userAge = UserDefaults.standard.integer(forKey: "userAge")
//        let userWeight = UserDefaults.standard.double(forKey: "userWeight")
//        let userHeight = UserDefaults.standard.double(forKey: "userHeigh")
//        let userCalories = UserDefaults.standard.integer(forKey: "userCalories")
//        user = UserData(age: userAge, height: userHeight, weight: userWeight, calories: userCalories)
    }
    
    func saveClick() {
        print(user.calories)
//        UserDefaults.standard.set(user.age, forKey: "userAge")
//        UserDefaults.standard.set(user.height, forKey: "userHeigh")
//        UserDefaults.standard.set(user.weight, forKey: "userWeight")
//        UserDefaults.standard.set(user.calories, forKey: "userCalories")
    }
}




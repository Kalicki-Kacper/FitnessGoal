//
//  SettingsViewViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation
import SwiftUI


 class SettingsViewModel: ObservableObject {
    
     @Published var data: UserData
     @Published var bmi: Double?
    
    init() {
        data = UserData.user
    }
    
     func calculateBMI(_ user: UserData) {
        let height = user.height / 100
        self.bmi = user.weight / pow(height, 2)
        
    }
}




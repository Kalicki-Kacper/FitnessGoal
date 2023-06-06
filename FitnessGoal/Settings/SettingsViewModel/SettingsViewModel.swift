//
//  SettingsViewViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation
import SwiftUI


 class SettingsViewModel: ObservableObject {
    
     @Published var user: UserData
    
    
    init() {
        user = UserData.user
    }
    
    func saveClick() {
        print(user)
    }
}




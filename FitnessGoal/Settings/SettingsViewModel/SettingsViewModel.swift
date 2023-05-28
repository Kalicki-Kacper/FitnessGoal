//
//  SettingsViewViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation


extension SettingsView {
    @MainActor class SettingsViewModel: ObservableObject {
       
        @Published var user = UserData(age: 0, height: 0, weight: 0)
  
        func saveClick () {
           print(user)

        }
    }
}



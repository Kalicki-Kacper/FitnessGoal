//
//  SettingsModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation


struct UserData: Identifiable {
    var id = UUID()
    var age: Int?
    var height: Double?
    var weight: Double?
    
}

struct Meal: Identifiable {
    let id = UUID()
    var nameOfMeal: String
    var caloriesOfMeal: Int
    var components: String
    var componentsCalories: Int
    var datePublished: String
}


extension UserData {
    static var user: UserData = UserData(age: nil, height: nil, weight: nil)
}

extension Meal {
    static var meals = [Meal(nameOfMeal: "", caloriesOfMeal: 0, components: "", componentsCalories: 0, datePublished: "")]
}

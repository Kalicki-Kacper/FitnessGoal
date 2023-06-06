//
//  SettingsModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation


struct UserData: Identifiable {
    let id = UUID()
    var age: Int
    var height: Double
    var weight: Double
    var calories: Int
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
    static var user: UserData = UserData(age: 20,
                                         height: 170,
                                         weight: 55,
                                         calories: 2000)
}

extension Meal {
    static var meals: [Meal] = [
        Meal(nameOfMeal: "śniadanie", caloriesOfMeal: 500, components: "rice,milk", componentsCalories: 321, datePublished: "13:30"),
        Meal(nameOfMeal: "obiad", caloriesOfMeal: 321, components: "rice,milk", componentsCalories: 321, datePublished: "16:30"),
        Meal(nameOfMeal: "kolacja", caloriesOfMeal: 200, components: "rice,milk", componentsCalories: 321, datePublished: "13:21")
    ]
}

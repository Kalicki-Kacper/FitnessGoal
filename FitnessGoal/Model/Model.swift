//
//  SettingsModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation

enum Gender: String, Identifiable, CaseIterable {
    var id: Self { self }
    case Male
    case Female
    case other
}

struct UserData: Identifiable {
    let id = UUID()
    var age: Int
    var height: Double
    var weight: Double
    var calories: Int
    var stepsModel: UserSteps
    var gender: Gender
}

struct Meal: Identifiable {
    let id = UUID()
    var nameOfMeal: String
    var caloriesOfMeal: Int
    var components: String
    var componentsCalories: Int
    var datePublished: String
}

struct UserSteps {
    var currentSteps: Int
    var stepsGoal: Int
}

struct StepsModel: Identifiable {
    let id = UUID()
    let count: Int
    let date: Date
}

struct ActiveCaloriesModel: Identifiable {
    let id = UUID()
    let kcalBurned: Double
    let date: Date
}

extension UserData {
    static var user: UserData = UserData(age: 20,
                                         height: 170,
                                         weight: 55,
                                         calories: 2000,
                                         stepsModel: .init(currentSteps: 5000, stepsGoal: 15000),
                                         gender: .other)
}

extension Meal {
    static var meals: [Meal] = [
        Meal(nameOfMeal: "śniadanie", caloriesOfMeal: 500, components: "rice,milk", componentsCalories: 321, datePublished: "13:30"),
        Meal(nameOfMeal: "obiad", caloriesOfMeal: 321, components: "rice,milk", componentsCalories: 321, datePublished: "16:30"),
        Meal(nameOfMeal: "kolacja", caloriesOfMeal: 200, components: "rice,milk", componentsCalories: 321, datePublished: "13:21")
    ]
}

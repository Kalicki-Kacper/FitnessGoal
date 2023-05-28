//
//  AddNewMealViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation

    class AddNewMealViewModel: ObservableObject {
        @Published var meal = Meal(nameOfMeal: "", caloriesOfMeal: 0, components: "", componentsCalories: 0, datePublished: "")
        
        
        @Published var meals: [Meal] = []
        @Published var nameOFIgredients = [String]()

        
        func addMeal() {
            var answer = meal.components.trimmingCharacters(in: .whitespacesAndNewlines)
            let kcalOfMeal = meal.componentsCalories
            guard answer.count > 0 else { return }
            guard kcalOfMeal >= 0 else { return }
            answer += "           \(meal.componentsCalories)"
            nameOFIgredients.insert(answer, at: 0)
            meal.caloriesOfMeal += meal.componentsCalories

        }
        
        func saveMeal(){

            let now = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd-hh-mm"
            
            let datePublished = dateFormatter.string(from: now)
            let components = nameOFIgredients.joined(separator: "\n")
            
            let meal = Meal(nameOfMeal: meal.nameOfMeal, caloriesOfMeal: meal.caloriesOfMeal, components: components, componentsCalories: meal.componentsCalories, datePublished: datePublished)
            meals.append(meal)
        }
        
        func getMeals() -> [Meal] {
            return meals
        }
    }
    

    

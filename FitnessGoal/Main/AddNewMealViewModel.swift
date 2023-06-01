//
//  AddNewMealViewModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import Foundation

class AddNewMealViewModel: ObservableObject {
    @Published var meal = Meal(nameOfMeal: "", caloriesOfMeal: 0, components: "", componentsCalories: 0, datePublished: "")
    
    @Published var kcalOfIngredients: String = ""
    @Published var meals: [Meal]
    @Published var nameOFIgredients = [String]()
    
    
    init() {
        meals = Meal.meals
    }
    
    func addMeal() {
        var mealText = meal.components
        var kcalOfMeal = (kcalOfIngredients as NSString).integerValue
        guard mealText.count > 0 else { return }
        guard kcalOfMeal >= 0 else { return }
        mealText += "           \(kcalOfMeal)"
        nameOFIgredients.insert(mealText, at: 0)
        meal.caloriesOfMeal += kcalOfMeal
        resetMeal()
    }
    
    func resetMeal() {
        meal.components = ""
        kcalOfIngredients = ""
    }
    
    func saveMeal(){
        
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh-mm"
        
        let datePublished = dateFormatter.string(from: now)
        let components = nameOFIgredients.joined(separator: "\n")
        
        let meal = Meal(nameOfMeal: meal.nameOfMeal, caloriesOfMeal: meal.caloriesOfMeal, components: components, componentsCalories: meal.componentsCalories, datePublished: datePublished)
        meals.append(meal)
    }
    
    func getMeals() -> [Meal] {
        return meals
    }
}




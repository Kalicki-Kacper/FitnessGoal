//
//  MealCardView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI

struct MealCardView: View {
    var meal: Meal
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            Text(meal.nameOfMeal)
                .fontWeight(.bold)
            HStack {
                Image(systemName: "carrot")
                Text("\(meal.caloriesOfMeal) kcal")
            }
            Spacer()
        }
        .foregroundColor(.black)
        .multilineTextAlignment(.center)
        .frame(width: 160, height: 100, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [.green,.cyan,.blue]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct MealCardView_Previews: PreviewProvider {
    static var previews: some View {
        MealCardView(meal: Meal(nameOfMeal: "", caloriesOfMeal: 0, components: "", componentsCalories: 0, datePublished: ""))
    }
}

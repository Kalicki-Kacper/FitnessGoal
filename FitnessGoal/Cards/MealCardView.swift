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
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
            Text(meal.nameOfMeal)
                .fontWeight(.bold)
            HStack {
                Image(systemName: "carrot")
                Text("\(meal.caloriesOfMeal) kcal")
            }
            HStack {
                Image(systemName: "clock")
                Text("\(meal.datePublished)")
            }
            HStack {
                Image(systemName: "flame.fill")
                Text("\(meal.caloriesOfMeal)")

            }
            Spacer()
        }
        .foregroundColor(.black)
        .multilineTextAlignment(.center)
        .frame(width: 160, height: 150, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [.yellow,.orange,.red]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(radius: 3)
    }
}

struct MealCardView_Previews: PreviewProvider {
    static var previews: some View {
        MealCardView(meal: Meal(nameOfMeal: "", caloriesOfMeal: 0, components: "", componentsCalories: 0, datePublished: ""))
    }
}

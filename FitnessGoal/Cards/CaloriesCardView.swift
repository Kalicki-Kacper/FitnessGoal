//
//  CaloriesCardView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI

struct CaloriesCardView: View {
    @EnvironmentObject var userSettings: SettingsViewModel
    @EnvironmentObject var meals: AddNewMealViewModel
    @ObservedObject var viewModel = CaloriesCardViewViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Calories")
                .font(.system(size: 36))
                .bold()
            HStack {
                ZStack {
                    VStack {
                        Image(systemName: "circle.dashed")
                            .font(.system(size: 140))
                            .foregroundColor(.yellow)
                    }
                    Text("\(userSettings.user.calories)")
                        
                }
                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "flag.fill")
                            .font(.system(size: 25))
                        VStack(alignment: .leading) {
                            Text("Base Goal")
                            Text("\(userSettings.user.calories)")
                        }
                    }
                    HStack {
                        Image(systemName: "fork.knife")
                            .font(.system(size: 25))
                        VStack(alignment: .leading) {
                            Text("Food")
                            Text("\(meals.caloriesOfMeal)")
                        }
                    }
                    HStack {
                        Image(systemName: "flame")
                            .font(.system(size: 25))
                        VStack(alignment: .leading){
                            Text("Exercise")
                            Text("\(viewModel.excerciseBurnCalories)")
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding()
        .frame(width: 350, height: 250)
        .background(.mint)
        .foregroundColor(.white)
        .shadow(radius: 10)
        .cornerRadius(10)
    }
}

struct CaloriesCardView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesCardView()
    }
}

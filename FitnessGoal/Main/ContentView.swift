//
//  ContentView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 16/04/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = AddNewMealViewModel()
   
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGray5)
                    .ignoresSafeArea(.all)
                ScrollView(.vertical) {
                    VStack(spacing: 15) {
                        TopDashboardView()
                        Spacer()
                        ScrollView(.horizontal) {
                            HStack(spacing: 25){
                                CaloriesCardView()
                            }
                        }
                        .padding(.horizontal)
                        Spacer()
                        ScrollView(.horizontal) {
                            HStack(spacing: 25){
                                StepsCardView()
                                StepsCardView()
                            }
                        }
                        .padding(.horizontal)
                        Text("Your meals today:")
                            .font(.title)
                        ScrollView(.horizontal) {
                            HStack(spacing: 25) {
                                MealCardView(meal: Meal(nameOfMeal: "", caloriesOfMeal: 9, components: "", componentsCalories: 9, datePublished: ""))
                              
                            }

                        }
                   
                    }
                }
                .overlay(alignment: .bottom) {
                    BottomMenuView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




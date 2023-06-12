//
//  HomeView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 01/06/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var mealsViewModel: AddNewMealViewModel

    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGray6)
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
                        
                        Text("Your activity today:")
                                .font(.title)
                        ScrollView(.horizontal) {
                            HStack(spacing: 25){
                                StepsCardView()
                            }
                        }
                        .padding(.horizontal)
                        
                        Text("Your meals today:")
                            .font(.title)
                        ScrollView(.horizontal) {
                            HStack (spacing: 25){
                                ForEach(mealsViewModel.meals) { meal in
                                    MealCardView(meal: meal)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding()
                .shadow(radius: 5)
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

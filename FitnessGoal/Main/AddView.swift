//
//  AddView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 16/04/2023.
//

import SwiftUI

struct AddView: View {
    let columns = [GridItem(.fixed(300)), GridItem(.fixed(200))]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGray5)
                    .ignoresSafeArea()
                VStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())],spacing: 20) {
                            ForEach(1..<19) { _ in
                                FoodCardView()
                            }
                        }
                        .padding(.horizontal)
                        
                    }
                }
            }
        }
        .navigationTitle("Your Meals today:")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}

struct FoodCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Meal 1")
            HStack {
                Image(systemName: "carrot")
                Text("\(Int.random(in: 0...1000)) kcal")
            }
        }
        .frame(width: 125,height: 100)
        .foregroundColor(.white)
        .background(.cyan)
        .cornerRadius(8)
    }
}

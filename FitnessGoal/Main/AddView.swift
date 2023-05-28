//
//  AddView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 16/04/2023.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var viewModel = AddNewMealViewModel()
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView{
            VStack {
                Form {
                    Section(header: Text("Name")) {
                        TextField("Meal name", text: $viewModel.meal.nameOfMeal)
                    }
                    Section(header: Text("Total Kcal")) {
                        TextField("Kcal", value: $viewModel.meal.caloriesOfMeal, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                    }
                    Section(header: Text("Enter your ingridnet")) {
                        HStack{
                            TextField("Name", text: $viewModel.meal.components)
                            //  .focused($isFocused)
                            Divider()
                            TextField("Kcal:", value: $viewModel.meal.componentsCalories, formatter: NumberFormatter())
                            //  .focused($isFocused)
                                .keyboardType(.numberPad)
                            Spacer()
                            Divider()
                            Button {
                                viewModel.addMeal()
                                
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .scaleEffect(1.5)
                            }
                        }
                    }
                    Section(header: Text("Ingridients")) {
                        VStack(alignment: .trailing){
                            ForEach(viewModel.nameOFIgredients, id: \.self){ ingridient in
                                Text(ingridient)
                            }
                        }
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Label("Cancel", systemImage: "xmark")
                                .labelsHidden()
                        }
                        
                    }
                    ToolbarItem {
                        
                        Button {
                            viewModel.saveMeal()
                            //    navigateToMeal.toggle()
                            dismiss()
                            viewModel.getMeals()
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelsHidden()
                        }
                    }
                })
                .navigationTitle("Add New Meal")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        .navigationViewStyle(.stack)
    }
}
    
    struct AddView_Previews: PreviewProvider {
        static var previews: some View {
            AddView()
        }
    }
    


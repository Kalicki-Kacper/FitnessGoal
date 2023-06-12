//
//  SettingsView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 16/04/2023.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var user: SettingsViewModel
    @ObservedObject var viewModel = SettingsViewModel()
    @State var showBmi = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGray6)
                    .ignoresSafeArea(.all)
                VStack (){
                    Text("Your information")
                        .font(.title)
                        .padding(.top)
                    Spacer()
                    List {
                        Section("Information about you"){
                            HStack(){
                                Text("Age:")
                                Spacer()                            
                                TextField("Age", value: $user.data.age, format: .number)
                            }
                            HStack(){
                                Text("Weight (Kg):")
                                Spacer()
                                TextField("Weight", value: $user.data.weight, format: .number)
                            }
                            HStack(){
                                Text("Height (cm):")
                                Spacer()
                                TextField("Height", value: $user.data.height, format: .number)
                            }
                         
                        }
                        Section("Set your goals:") {
                            HStack() {
                                Text("Calories for day (kcal):")
                                Spacer()
                                TextField("Calories for day", value: $user.data.calories, format: .number)
                            }
                            
                            HStack() {
                                Text("Steps:")
                                Spacer()
                                TextField("Steps", value: $user.data.stepsModel.stepsGoal, format: .number)
                            }
                        }
                        Section("Select gender:") {
                            Picker("Gender", selection: $user.data.gender) {
                                ForEach(Gender.allCases) { item in
                                    Text(item.rawValue.uppercased())
                                }
                            }
                        }
                        if showBmi {
                            Section("Your BMI:") {
                                Text(String(format: "%.2f", viewModel.bmi ?? 0))

                            }
                        }
                     
                    }
                    .listStyle(.insetGrouped)
                    .keyboardType(.decimalPad)
                    Spacer()
                    if !showBmi {
                        Button("Calculate BMI") {
                            viewModel.calculateBMI(user.data)
                            showBmi = true
                        }
                        .frame(width: 150,height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        Spacer()
                    }
                   
                }
            }
        
        }
        .navigationTitle("Settings")
        .navigationViewStyle(.stack)
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

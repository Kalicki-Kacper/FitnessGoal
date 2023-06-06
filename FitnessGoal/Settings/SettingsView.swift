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
                                TextField("Age", value: $user.user.age, format: .number)
                            }
                            HStack(){
                                Text("Weight:")
                                Spacer()
                                TextField("Weight", value: $user.user.weight, format: .number)
                            }
                            HStack(){
                                Text("Height:")
                                Spacer()
                                TextField("Height", value: $user.user.height, format: .number)
                            }
                            HStack(){
                                Text("Calories for day:")
                                Spacer()
                                TextField("Calories for day", value: $user.user.calories, format: .number)
                            }
                        }
                    }
                    .listStyle(.insetGrouped)
                    .frame(height: 250)
                    .keyboardType(.decimalPad)
                    Spacer()
                    Button("Save") {
                        viewModel.saveClick()
                    }
                    .frame(width: 150,height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    Spacer()
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

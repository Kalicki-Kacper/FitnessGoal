//
//  StepsCardView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI
import HealthKitUI

struct StepsCardView: View {
    @EnvironmentObject var userSettings: SettingsViewModel
    @ObservedObject var viewModel = StepsCardViewModel()
    var healthStore: HealthStore?
    @State var showDetails = false
    @State var dataRecived = false
    init() {
        healthStore = HealthStore()
    }
    
  
    
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text("Steps")
                .font(.system(size: 25))
                .foregroundColor(.white)
            HStack {
                Image(systemName: "figure.walk")
                    .font(.system(size: 25))
                Text("\(viewModel.steps.last?.count ?? 0)")
            }
            Text("Goal: \(userSettings.data.stepsModel.stepsGoal) steps")
            ProgressView(value: Float(viewModel.steps.first?.count ?? 0), total: Float(userSettings.data.stepsModel.stepsGoal))
                .accentColor(.blue)
                .scaleEffect(x: 1, y: 4, anchor: .center)
        }
        .padding(.horizontal)
        .frame(width: 200, height: 175,alignment: .leading)
        .background(LinearGradient(gradient: Gradient(colors: [.green,.yellow]), startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        .cornerRadius(20)
        
        .onAppear {
            if let healthStore = healthStore {
                healthStore.requestAuthorization { success in
                    if success && !dataRecived {
                        healthStore.calculateStep { statsCollection in
                            if let statsCollection = statsCollection {
                                viewModel.updateProgressFromStatistics(statsCollection)
                                dataRecived = true
                            }
                        }
                    }
                }
            }
        }
        .onTapGesture {
            showDetails = true
            
        }.sheet(isPresented: $showDetails) {
            StepCardDetails(viewModel: viewModel)
        }
    }
}

struct StepsCardView_Previews: PreviewProvider {
    static var previews: some View {
        StepsCardView()
    }
}

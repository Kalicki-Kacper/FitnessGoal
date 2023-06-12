//
//  StepCardDetails.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 12/06/2023.
//

import SwiftUI

struct StepCardDetails: View {
@ObservedObject var viewModel: StepsCardViewModel
@Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
                List(viewModel.steps) { stepDetails in
                    VStack(alignment: .leading) {
                        Text("Steps: \(stepDetails.count)")
                        Text(stepDetails.date.formatted())
                            .opacity(0.5)
                            
                    }
                }
                .padding()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Label("Back", systemImage: "arrow.backward")
                                .foregroundColor(.blue)
                        }
                    }
                }
            
            .navigationTitle("Step Details")
            .navigationBarTitleDisplayMode(.inline)
            .navigationViewStyle(.stack)

        }
      
      
    }

}

struct StepCardDetails_Previews: PreviewProvider {
    static var previews: some View {
        StepCardDetails(viewModel: StepsCardViewModel())
    }
}

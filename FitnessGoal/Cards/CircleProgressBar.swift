//
//  CircleProgressBar.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 07/06/2023.
//

import SwiftUI

struct CircleProgressBar: View {
    @ObservedObject var viewModel = ProgressBarColorModel()
    @Binding var progress: Double
    
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.orange.opacity(0.5),
                    lineWidth: 20
                )
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        viewModel.setupColor(progress: progress),
                        style: StrokeStyle(
                            lineWidth: 20,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(-90))
           
            
            

        }
        .frame(width: 130,height: 130)
        .foregroundColor(.clear)
        .animation(.easeOut, value: progress)
    }
}

struct CircleProgressBar_Previews: PreviewProvider {
    @State static var cur: Double = 1.2

    static var previews: some View {
        CircleProgressBar(progress: $cur)
    }
}

//
//  StepsCardView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI

struct StepsCardView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text("Steps")
                .font(.system(size: 25))
                .foregroundColor(.white)
            HStack {
                Image(systemName: "figure.walk")
                    .font(.system(size: 25))
                Text("3500")
            }
            Text("Goal: 15,000 steps")
            ProgressView(value: Float.random(in: 0...15000), total: 15000)
                .accentColor(.indigo)
                .scaleEffect(x: 1, y: 4, anchor: .center)
        }
        .padding(.horizontal)
        .frame(width: 200, height: 175,alignment: .leading)
        .background(.green)
        .foregroundColor(.white)
        .cornerRadius(10)
        .shadow(radius: 4)
    }
}

struct StepsCardView_Previews: PreviewProvider {
    static var previews: some View {
        StepsCardView()
    }
}

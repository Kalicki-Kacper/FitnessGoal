//
//  TopDashboardView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI

struct TopDashboardView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image("photo")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    .shadow(radius: 10)
            }
            Spacer()
            Text("We're so happy to see you again")
                .font(.largeTitle)
                .bold()
            Spacer()
            Button(action: {} ) {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .background(.clear)
                    .foregroundColor(.black)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
    }
}

struct TopDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        TopDashboardView()
    }
}

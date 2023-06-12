//
//  TopDashboardView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI

struct TopDashboardView: View {
    @EnvironmentObject var user: SettingsViewModel

    var body: some View {
        HStack {
            Button(action: {
                print(user.data.gender)
            }) {
                Image(user.setImage())
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
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

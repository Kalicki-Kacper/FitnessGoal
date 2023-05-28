//
//  CaloriesCardView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI

struct CaloriesCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Calories")
                .font(.system(size: 36))
                .bold()
            
            HStack {
                VStack {
                    
                    Image(systemName: "circle.dashed")
                        .font(.system(size: 140))
                        .foregroundColor(.yellow)

                    
                }
                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "flag.fill")
                            .font(.system(size: 25))
                        VStack(alignment: .leading) {
                            Text("Base Goal")
                            Text("1,500")
                        }
                    }
                    HStack {
                        Image(systemName: "fork.knife")
                            .font(.system(size: 25))
                        VStack(alignment: .leading) {
                            Text("Food")
                            Text("324")
                        }
                    }
                    HStack {
                        Image(systemName: "flame")
                            .font(.system(size: 25))
                        VStack(alignment: .leading){
                            Text("Exercise")
                            Text("300")
                        }
                    }
                }
                .padding(.horizontal)
                
                
            }
        }
        .padding()
        .frame(width: 350, height: 250)
        .background(.mint)
        .foregroundColor(.white)
        .shadow(radius: 10)
        .cornerRadius(10)
    }
}

struct CaloriesCardView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesCardView()
    }
}

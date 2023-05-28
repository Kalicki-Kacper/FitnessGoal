//
//  bottomMenuView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI

struct BottomMenuView: View {
    var body: some View {
            VStack {
             
                Divider()
                HStack(spacing: 45) {
//                    NavigationLink(destination: ContentView()) {
//                        Image(systemName: "house")
//                    }
  //                  Divider()
                    NavigationLink(destination: AddView()) {
                        Image(systemName: "plus.circle")
                    }
                    Divider()
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear")
                    }

                }
                .font(.system(size: 30))
                .foregroundColor(.black)
                .frame(width: 400, height: 50)
                .background(.clear)
                .cornerRadius(8)
                .padding()
            }
        }
}

struct bottomMenuView_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuView()
    }
}

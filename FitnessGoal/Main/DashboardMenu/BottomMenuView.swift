//
//  bottomMenuView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 28/05/2023.
//

import SwiftUI

struct BottomMenuView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            AddView()
                .tabItem {
                    Label("Add Meal", systemImage: "plus.circle")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct bottomMenuView_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuView()
    }
}

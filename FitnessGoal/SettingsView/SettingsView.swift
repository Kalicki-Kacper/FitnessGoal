//
//  SettingsView.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 16/04/2023.
//

import SwiftUI

struct SettingsView: View {
    @State var age: String = ""
    @State var weight: String = ""
    @State var height: String = ""

    
    var body: some View {
        NavigationView {
            VStack (){
                Spacer()
                Text("Your information")
                    .font(.title)
                    .padding(.top)
                List {
                    Section("Information about you"){
                        HStack(){
                            Text("Age:")
                            Spacer()
                            TextField("Age", text: $age)
                        }
                        HStack(){
                            Text("Weight:")
                            Spacer()
                            TextField("Weight", text: $weight)
                        }
                        HStack(){
                            Text("Height:")
                            Spacer()
                            TextField("Height", text: $height)
                        }
                    }
                }
                .listStyle(.sidebar)
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

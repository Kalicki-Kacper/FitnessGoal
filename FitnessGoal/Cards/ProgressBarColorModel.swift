//
//  ProgressBarColorModel.swift
//  FitnessGoal
//
//  Created by Kacper Kalicki on 07/06/2023.
//

import Foundation
import SwiftUI

class ProgressBarColorModel: ObservableObject {
        
    
    func setupColor(progress: Double) -> Color {
        if progress <= 0.4 {
            return .cyan
        } else if progress >= 0.4 && progress < 0.6 {
            return .blue
        } else if progress >= 0.6 && progress < 0.9 {
            return .yellow
        } else if progress >= 0.9 && progress < 1 {
            return .green
        } else if progress >= 1 {
            return .red
        }
        return .black
    }
    
    
}

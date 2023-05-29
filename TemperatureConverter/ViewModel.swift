//
//  ViewModel.swift
//  TemperatureConverter
//
//  Created by Isaac Boothe on 5/27/23.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var input: String = ""
    @Published var result: String = ""
    @Published var tempType: Bool = false
    
    func convertTemp() {
        if tempType { // Fahrenheit to Celsius
            if let fahrVal = Double(input) {
                let celsVal = (fahrVal - 32) * 5/9
                result = String(format: "%.2f", celsVal)
                result = "\(result) C"
                print(result)
            }
        }
        else { //Celsius to Fahrenheit
            if let celsVal = Double(input) {
                let fahrVal = (celsVal * 9/5) + 32
                result = String(format: "%.2f", fahrVal)
                result = "\(result) F"
                
                print(result)
            }
        }
    }
}

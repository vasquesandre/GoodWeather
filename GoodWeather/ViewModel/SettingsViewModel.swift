//
//  SettingsViewModel.swift
//  GoodWeather
//
//  Created by Andre Vasques on 16/08/25.
//

import Foundation

enum Unit: String, CaseIterable {
    case celsius = "metric"
    case fahrenheit = "imperial"
}

extension Unit {
    
    var displayName: String {
        get {
            switch(self) {
            case .celsius:
                return "Celsius (°C)"
            case .fahrenheit:
                return "Fahrenheit (°F)"
            }
        }
    }
    
}

class SettingsViewModel {
    
    let units = Unit.allCases
    
    var selectedUnit: Unit {
        get {
            let userDefaults = UserDefaults.standard
            if let value = userDefaults.string(forKey: "unit"),
                let unit = Unit(rawValue: value) {
                return unit
            }
            return .celsius
        }
        set {
            let userDefaults = UserDefaults.standard
            userDefaults.set(newValue.rawValue, forKey: "unit")
        }
    }
    
}

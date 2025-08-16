//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Andre Vasques on 16/08/25.
//

import UIKit

extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}

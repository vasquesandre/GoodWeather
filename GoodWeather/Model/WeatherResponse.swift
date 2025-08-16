//
//  Weather.swift
//  GoodWeather
//
//  Created by Andre Vasques on 15/08/25.
//

import UIKit

struct WeatherResponse: Codable {
    let name: String
    let main: Weather
}

struct Weather: Codable {
    let temp: Double
}

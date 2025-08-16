//
//  Constants.swift
//  GoodWeather
//
//  Created by Andre Vasques on 15/08/25.
//

import UIKit

struct Constants {
    static let apiKey = Bundle.main.object(forInfoDictionaryKey: "OPENWEATHERMAP_API_KEY") as? String
    
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "metric"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&units=\(unit)&appid=\(Constants.apiKey ?? "")")!
        }
    }
}

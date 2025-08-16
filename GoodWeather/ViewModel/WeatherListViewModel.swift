//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Andre Vasques on 15/08/25.
//

import UIKit

class WeatherListViewModel {
    
    
    
}

class WeatherViewModel {
    
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        weather.name
    }
    
    var temperature: Double {
        weather.main.temp
    }
    
}

//
//  WeatherListViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Andre Vasques on 18/08/25.
//

import XCTest
@testable import GoodWeather

final class WeatherListViewModelTests: XCTestCase {
    
    private var weartherListVM: WeatherListViewModel!

    override func setUp() {
        super.setUp()
        
        weartherListVM = WeatherListViewModel()
        
        weartherListVM.addWeatherViewModel(WeatherViewModel(weather: WeatherResponse(name: "Ushuaia", main: Weather(temp: 5))))
        weartherListVM.addWeatherViewModel(WeatherViewModel(weather: WeatherResponse(name: "Natal", main: Weather(temp: 31))))
        
    }
    
    func testShouldBeAbleToConvertToFahrenheitSuccessfully() {
        let fahrenheitTemperatures = [41.0, 87.8]
        
        weartherListVM.updateUnit(to: .fahrenheit)
        
        for (index, vm) in weartherListVM.weatherViewModels.enumerated() {
            XCTAssertEqual(vm.temperature, fahrenheitTemperatures[index])
        }
    }
    
    override func tearDown() {
        super.tearDown()
    }

}

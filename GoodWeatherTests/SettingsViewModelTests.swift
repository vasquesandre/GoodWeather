//
//  SettingsViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Andre Vasques on 18/08/25.
//

import XCTest
@testable import GoodWeather

final class SettingsViewModelTests: XCTestCase {
    
    private var settingsVM: SettingsViewModel!
    
    override func setUp() {
        super.setUp()
        
        self.settingsVM = SettingsViewModel()
    }

    func testShouldMakeSureThatDefaultSelectedUnitIsCelsius() {
        XCTAssertEqual(settingsVM.selectedUnit, .celsius)
    }
    
    func testShouldReturnCorrectDisplayNameForCelsius() {
        XCTAssertEqual(settingsVM.selectedUnit.displayName, "Celsius (°C)")
    }
    
    func testShouldBeAbleToSaveUserUnitSelection() {
        settingsVM.selectedUnit = .fahrenheit
        let userDefaults = UserDefaults.standard
        XCTAssertNotNil(userDefaults.value(forKey: "unit"))
    }
    
    override func tearDown() {
        super.tearDown()
        
        let userDefaults = UserDefaults.standard
        userDefaults.removeObject(forKey: "unit")
    }

}

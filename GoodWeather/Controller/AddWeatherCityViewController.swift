//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Andre Vasques on 15/08/25.
//

import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    private var addWeatherVM = AddWeatherViewModel()
    
    @IBOutlet weak var textFieldView: UIView!
    @IBOutlet weak var cityNameTextField: UITextField!
    
    var delegate: AddWeatherDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldView.layer.cornerRadius = 20
    }
    
    
    @IBAction func saveCityButtonPressed(_ sender: UIBarButtonItem) {
        
        if let city = cityNameTextField.text {
            
            addWeatherVM.addWeather(for: city) { vm in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true)
            }
            
        }
        
    }
    
    @IBAction func closeButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
    
}

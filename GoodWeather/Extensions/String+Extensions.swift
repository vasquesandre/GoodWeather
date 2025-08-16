//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Andre Vasques on 15/08/25.
//

import UIKit

extension String {
    
    func escaped() -> String {
        
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
        
    }
    
}

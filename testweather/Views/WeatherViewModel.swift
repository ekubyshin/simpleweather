//
//  WeatherViewModel.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

struct WeatherViewModel {
    let cityName: String
    private var _temp: Double
    var temp: Double {
        get {
            return _temp - 273
        }
        set {
            _temp = newValue
        }
    }
    let humidity: Double
    init(_ cityName: String, temp: Double, humidity: Double) {
        self.cityName = cityName
        _temp = temp
        self.humidity = humidity
    }
}

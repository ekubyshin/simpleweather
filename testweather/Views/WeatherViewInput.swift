//
//  WeatherViewIntpu.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

protocol WeatherViewInput: AnyObject {
    func configure(_ model: WeatherViewModel)
    func showError(_ msg: String)
}

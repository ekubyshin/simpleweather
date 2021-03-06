//
//  WeatherPresenter.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

protocol WeatherPresenter: AnyObject {
    func bindView(_ view: WeatherViewInput)
    init(_ weatherService: WeatherService)
}

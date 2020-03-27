//
//  WeatherService.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

protocol WeatherService: AnyObject {
    func getWeather(_ completion: @escaping (Result<WeatherEntity, WeatherServiceError>) -> Void)
}

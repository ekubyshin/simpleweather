//
//  WeatherConditionEntity.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

struct WeatherConditionEntity: Decodable {
    let temp: Double
    let humidity: Double
}

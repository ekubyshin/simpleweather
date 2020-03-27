//
//  WeatherEntity.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

struct WeatherEntity: Decodable {
    let name: String
    let main: WeatherConditionEntity
}

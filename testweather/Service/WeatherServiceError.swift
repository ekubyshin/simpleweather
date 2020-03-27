//
//  WeatherServiceError.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

enum WeatherServiceError: Error {
    case invalidUrl(url : String)
    case unknown(msg: String)
    var localizedDescription: String {
        switch self {
        case .invalidUrl(let url):
            return url
        case .unknown(let msg):
            return msg
        }
    }
}

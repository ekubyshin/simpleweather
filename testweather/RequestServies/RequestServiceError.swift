//
//  RequestServiceError.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 27.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

enum RequestServiceError: Error {
    case unknown(err: Error)
    case noData
    case invalidUrl(url: String)
}

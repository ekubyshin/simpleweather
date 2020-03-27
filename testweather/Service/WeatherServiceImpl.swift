//
//  WeatherServiceImpl.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

class WeatherServiceImpl<T: RequestService>: WeatherService {
    private var requestService: T
    private let url = "http://api.openweathermap.org/data/2.5/weather?q=Moscow&appid=bd0f701cc91c0acd2d4765c91a8755bc"
    required init(_ requestService: T) {
        self.requestService = requestService
    }
    func getWeather(_ completion: @escaping (Result<WeatherEntity, WeatherServiceError>) -> Void) {
        requestService.getData(url) { (result) in
            switch result {
            case .failure(let err):
                completion(.failure(WeatherServiceError.unknown(msg: err.localizedDescription)))
            case .success(let data):
                let decoder = JSONDecoder()
                do {
                    let model = try decoder.decode(WeatherEntity.self, from: data)
                    completion(.success(model))
                } catch let err {
                    completion(.failure(WeatherServiceError.unknown(msg: err.localizedDescription)))
                }
            }
        }
    }
}

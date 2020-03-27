//
//  WeatherPresenterImpl.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

class WeatherPresenterImpl: WeatherPresenter {
    private weak var view: WeatherViewInput?
    private var weatherService: WeatherService
    func bindView(_ view: WeatherViewInput) {
        self.view = view
    }
    required init(_ weatherService: WeatherService) {
        self.weatherService = weatherService
    }
}

extension WeatherPresenterImpl: WeatherViewOutput {
    func didLoaded() {
        weatherService.getWeather { (result) in
            DispatchQueue.main.async {
                switch result {
                case .failure(let err):
                    self.view?.showError(err.localizedDescription)
                case .success(let entity):
                    self.view?.configure(
                        WeatherViewModel(entity.name, temp: entity.main.temp, humidity: entity.main.humidity)
                    )
                }
            }
        }
    }
}

//
//  ViewController.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import UIKit

class WeatherView: UIViewController {
    var presenter: WeatherViewOutput?
    private let humidity = UILabel()
    private let temp = UILabel()
    private let cityName = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        makeView()
        presenter?.didLoaded()
    }
    private func makeView() {
        humidity.translatesAutoresizingMaskIntoConstraints = false
        temp.translatesAutoresizingMaskIntoConstraints = false
        cityName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(humidity)
        view.addSubview(temp)
        view.addSubview(cityName)
        NSLayoutConstraint.activate([
            humidity.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            humidity.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            temp.leadingAnchor.constraint(equalTo: humidity.leadingAnchor),
            temp.topAnchor.constraint(equalTo: humidity.bottomAnchor, constant: 10),
            cityName.leadingAnchor.constraint(equalTo: temp.leadingAnchor),
            cityName.topAnchor.constraint(equalTo: temp.bottomAnchor, constant: 10)
        ])
    }
}


extension WeatherView: WeatherViewInput {
    func configure(_ model: WeatherViewModel) {
        humidity.text = "Humidity: \(model.humidity)%"
        temp.text = "Temperature: \(model.temp)℃"
        cityName.text = "City: \(model.cityName)"
    }
    func showError(_ msg: String) {
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

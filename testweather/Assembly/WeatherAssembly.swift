//
//  WeatherAssembly.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation
import UIKit

class WeatherAssembly: Assembly  {
    func getView() -> UIViewController {
        let service = WeatherServiceImpl<SimpleRequestService>(SimpleRequestService())
        let view = WeatherView()
        let presenter = WeatherPresenterImpl(service)
        presenter.bindView(view)
        view.presenter = presenter
        return view
    }
}

//
//  Assembly.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 26.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation
import UIKit

protocol Assembly: AnyObject {
    func getView() -> UIViewController
}

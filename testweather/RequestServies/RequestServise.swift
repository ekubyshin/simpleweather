//
//  RequestServise.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 27.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

protocol RequestService: AnyObject {
    func getData(_ string: String, completion: @escaping (Result<Data, RequestServiceError>) -> Void)
}

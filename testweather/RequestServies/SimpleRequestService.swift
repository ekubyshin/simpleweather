//
//  SimpleRequestService.swift
//  testweather
//
//  Created by Evgeny Kubyshin on 27.03.2020.
//  Copyright © 2020 Evgeny Kubyshin. All rights reserved.
//

import Foundation

class SimpleRequestService: RequestService {
    func getData(_ string: String, completion: @escaping (Result<Data, RequestServiceError>) -> Void) {
        guard let url = URL(string: string) else {
            completion(.failure(.invalidUrl(url: string)))
            return
        }
        let sess = URLSession.shared.dataTask(with: url) { (data, res, err) in
            if let err = err {
                completion(.failure(.unknown(err: err)))
            }
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            completion(.success(data))
        }
        sess.resume()
    }
}

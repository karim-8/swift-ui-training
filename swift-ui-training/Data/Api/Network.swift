//
//  Network.swift
//  swift-ui-training
//
//  Created by Karim Soliman on 08/03/2024.
//

import Foundation

protocol RequestProtocol {
    var url: URL { get }
}

class NetworkClient {
    func get(request: RequestProtocol, completion: @escaping (Result<Data, Error>) -> ()){
        print(request.url)
        let urlRequest = URLRequest(url: request.url)
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            // Case Error
            if error != nil {
                completion(.failure(NetworkError.networkError))
                return
            }
            // Case No Data
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            // Case Success Response
            completion(.success(data))
        }.resume()
    }
}

enum NetworkError: Error {
    case noData
    case networkError
}

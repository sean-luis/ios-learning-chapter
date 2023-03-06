//
//  APIService.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation
import Resolver

protocol APIServiceProtocol {
    func get(with urlRequest: URLRequest, completion: @escaping (Result<Data, APIError>) -> Void)
}

class APIService {
    @Injected private var session: URLSession
}

extension APIService: APIServiceProtocol {
    func get(with urlRequest: URLRequest, completion: @escaping (Result<Data, APIError>) -> Void) {
        
        guard urlRequest.httpMethod == HTTPMethod.get.rawValue else {
            completion(.failure(APIError.network(description: "Url can't be reached")))
            
            return
        }
        
        session.dataTask(with: urlRequest) { data, _, error in
            
            guard error == nil, let data = data else {
                completion(.failure(APIError.network(description: "Something wrong happened")))
                return
            }
            completion(.success(data))
        }.resume()
    }
}

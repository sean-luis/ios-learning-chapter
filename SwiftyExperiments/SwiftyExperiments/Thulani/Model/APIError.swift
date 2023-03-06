//
//  APIError.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation

enum APIError: Error, Equatable {
case badURL(description: String)
case parsing(description: String)
case network(description: String)
    
    var description: String {
        switch self {
        case .badURL(let value):
            return value
        case .parsing(description: let value):
            return value
        case .network(description: let value):
            return value
        }
    }
}

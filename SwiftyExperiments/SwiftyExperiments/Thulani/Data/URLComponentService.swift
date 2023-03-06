//
//  URLComponentService.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation

protocol URLComponentsServiceProtocol {
    func urlComponetsBuilder() -> URLComponents
}

// https://jsonplaceholder.typicode.com/users
struct URLComponentsService: URLComponentsServiceProtocol {
    func urlComponetsBuilder() -> URLComponents {
        var components =  URLComponents()
        components.scheme = "https"
        components.host = "jsonplaceholder.typicode.com"
        components.path = "/users"
        
        return components
    }
}

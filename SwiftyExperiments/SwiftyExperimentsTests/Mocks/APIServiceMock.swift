//
//  APIServiceMock.swift
//  SwiftyExperimentsTests
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation
@testable import SwiftyExperiments

class APIServiceMock: APIServiceProtocol { // We can use tools like Cuckoo or MockingBird to help us avoid mocking by hand
    
    var result: Result<Data, APIError>?
    
    func get(with urlRequest: URLRequest, completion: @escaping (Result<Data, APIError>) -> Void) {
        guard let result = result else {
            fatalError("Nil Result")
        }
        
        return completion(result)
    }
}

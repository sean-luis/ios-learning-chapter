//
//  Data+Decode.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation


protocol DataDecoder {
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T
}

extension JSONDecoder: DataDecoder {}

//MARK: Helper Method
extension Data {
    func decoded<T: Decodable>(using decoder: DataDecoder = JSONDecoder()) throws -> T {
        return try decoder.decode(T.self, from: self)
    }
}

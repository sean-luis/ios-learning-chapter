//
//  User.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation

struct User: Codable, Identifiable, Equatable {
    var id: Int
    var name: String
    var username: String
}

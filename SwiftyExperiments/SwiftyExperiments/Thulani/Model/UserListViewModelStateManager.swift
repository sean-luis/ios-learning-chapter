//
//  UserListViewModelStateManager.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation

enum UserListViewModelStateManager: Equatable {
    case idle
    case loading
    case failed(APIError)
    case loaded([User])
}

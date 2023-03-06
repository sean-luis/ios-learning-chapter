//
//  UserService.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation
import Resolver

protocol UserServiceProtocol {
    func fetchUsers(completion: @escaping ([User]?, APIError?) -> Void)
}

class UserService: UserServiceProtocol { //This can be used as a Repo layer
    @Injected private var apiService: APIServiceProtocol
    @Injected private var urlComponent: URLComponentsServiceProtocol
}

extension UserService {
    func fetchUsers(completion: @escaping ([User]?, APIError?) -> Void) {
        guard let url = urlComponent.urlComponetsBuilder().url else {
            return completion(nil, APIError.badURL(description: "URL can not be reached"))
        }
        
        apiService.get(with: URLRequest(url: url), completion: { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    guard let users = try? data.decoded() as [User] else {
                        completion(nil, APIError.parsing(description: "Something went wrong with your data!"))
                        return
                    }
                    return completion(users, nil)
                case .failure(let error):
                    return completion(nil, error)
                }
            }
        })
    }
}

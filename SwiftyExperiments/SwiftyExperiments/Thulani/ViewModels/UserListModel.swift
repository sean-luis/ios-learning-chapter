//
//  UserListModel.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation
import Resolver

class UserListViewModel: ObservableObject, Identifiable {
    @Published private(set) var state: UserListViewModelStateManager = .idle //Handles initial state of the view
    
    @Injected private var userService: UserServiceProtocol //Service is injected from the container. Resolver will check for the instance in the factory method
}

extension UserListViewModel {
    func fetchUsers() {
        state = .loading
        
        userService.fetchUsers(completion: {[weak self] userList, error in
            guard let self = self else { return }
            
            if let userList = userList {
                self.state = .loaded(userList)
            } else if let error = error {
                self.state = .failed(error)
            }
        })
    }
}

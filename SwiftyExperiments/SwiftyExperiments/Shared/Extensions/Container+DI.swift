//
//  Container+DI.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    
    public static func registerAllServices() { //Factory to help instantiate a service or object required as a dependency at some point of the application
        //Register your dependencies here
        
        register { URLSession(configuration: .default) }.scope(.shared)
        
        defaultScope = .graph
        
        register { APIService() }.implements(APIServiceProtocol.self)
        register { URLComponentsService() }.implements(URLComponentsServiceProtocol.self)
        register { UserService() }.implements(UserServiceProtocol.self)
        register { _, args in UserViewModel(user: args()) }
        register { UserListViewModel() }
    }
}

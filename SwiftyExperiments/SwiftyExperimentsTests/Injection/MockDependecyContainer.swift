//
//  MockDependecyContainer.swift
//  SwiftyExperimentsTests
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation
import Resolver
@testable import SwiftyExperiments

extension Resolver {
    static var mock = Resolver(child: .main)
    
    static func registerMockServices() {
        root = Resolver.mock //for testing we point to our mock container
        
        defaultScope = .application //Scopes basicly determain how long a registered service lives
        
        Resolver.mock.register { APIServiceMock()}.implements(APIServiceProtocol.self)
    }
}

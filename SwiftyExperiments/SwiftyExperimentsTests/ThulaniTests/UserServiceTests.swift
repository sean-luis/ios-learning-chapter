//
//  UserServiceTests.swift
//  SwiftyExperimentsTests
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import XCTest
import Resolver
@testable import SwiftyExperiments

class UserServiceTests: XCTestCase {
    
    var systemUnderTest: UserService?
    @LazyInjected var apiservice: APIServiceMock
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        systemUnderTest = UserService()
        Resolver.registerMockServices()
    }
    
    
    func testFetchUsersServiceSuccess() {
        let user = mockUser()
        
        apiservice.result = .success(users())
        
        systemUnderTest?.fetchUsers{ users, error in
            XCTAssertEqual(users?.count, 1)
            XCTAssertEqual(users?.first, user)
            XCTAssertNil(error)
        }
    }
    
    func testGetUsersServiceFailedWithError() {
        let networkError =  APIError.network(description: "Something went wrong with connection")
        
        apiservice.result = .failure(networkError)
        
        systemUnderTest?.fetchUsers{users, error in
            XCTAssertEqual(error, networkError)
            XCTAssertNil(users)
        }
    }
    
    override func tearDownWithError() throws {
        
        systemUnderTest = nil
        
        try super.tearDownWithError()
    }
}

extension UserServiceTests {
    private func mockUser() -> User {
        User(id: 1, name: "Jane", username: "Doe")
    }
    
    private func users() -> Data {
        let user = self.mockUser()
        let userListData = try? JSONEncoder().encode([user])
        
        return userListData ?? Data()
    }
}

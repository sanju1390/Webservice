//
//  WebServiceTests.swift
//  WebServiceTests
//
//  Created by Sanju on 23/01/19.
//  Copyright © 2019 Sanju. All rights reserved.
//

import XCTest
@testable import WebService

class WebServiceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let configUrlStr = Bundle(for: WebServiceTests.self).path(forResource: "Info", ofType: "plist")!

        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

//
//  Fastlane_DemoTests.swift
//  Fastlane DemoTests
//
//  Created by Yavuz Aytekin on 23.06.2024.
//

import XCTest
@testable import Fastlane_Demo

final class Fastlane_DemoTests: XCTestCase {

    func testExample() throws {
        let viewController = ViewController()
        XCTAssertEqual(viewController.demoTestVariable, 5)
    }

}

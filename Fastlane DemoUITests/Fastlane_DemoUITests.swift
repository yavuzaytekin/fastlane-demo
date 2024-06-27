//
//  Fastlane_DemoUITests.swift
//  Fastlane DemoUITests
//
//  Created by Yavuz Aytekin on 26.06.2024.
//

import XCTest
@testable import Fastlane_Demo

final class Fastlane_DemoUITests: XCTestCase {

    @MainActor override func setUpWithError() throws {
        let app = XCUIApplication()
         setupSnapshot(app)
         app.launch()
    }
    
    @MainActor func testTakeScreenshots() {
        let app = XCUIApplication()
        snapshot("01FirstScreen")
        
        app.buttons["goToSecondButton"].tap()
        
        snapshot("02SecondScreen")
        
        let backButton = app.navigationBars.buttons.element(boundBy: 0)
        backButton.tap()
        snapshot("01FirstScreen")
    }
}

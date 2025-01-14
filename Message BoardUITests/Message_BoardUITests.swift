//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        // KEEP THIS SETUP FUNCTION EXACTLY AS IS.
        
        continueAfterFailure = false
        
        let app = XCUIApplication()
        
        app.launchArguments = ["UITesting"]
        app.launch()
    }

    func testCreatingThread() {
        let app = XCUIApplication()
        let threadTextField = app.textFields["Create a new thread:"]
        threadTextField.tap()
        threadTextField.typeText("Testing Another Thread\n")
        let cell = app.tables.cells.staticTexts["Testing Another Thread"]
        XCTAssertEqual(cell.label, "Testing Another Thread")

    }
    
    func testSelectingMessageThread() {
        
        
        let app = XCUIApplication()
        
        testCreatingThread()
    
        app.tables.staticTexts["Testing Another Thread"].tap()
        XCTAssert(app.navigationBars.staticTexts["Testing Another Thread"].exists)
        
        
    }
    
    
    
}

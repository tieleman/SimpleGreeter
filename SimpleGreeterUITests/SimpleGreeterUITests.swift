//
//  SimpleGreeterUITests.swift
//  SimpleGreeterUITests
//
//  Created by Sjoerd Tieleman on 25/02/2020.
//  Copyright © 2020 Sjoerd Tieleman. All rights reserved.
//

import XCTest

class SimpleGreeterUITests: XCTestCase {
    override func setUp() {
        continueAfterFailure = false
    }

    func testInitialViewState() {
        let app = XCUIApplication()
        app.launch()
        
        let textField      = app.textFields.element
        let enterNameLabel = app.staticTexts["enterNameLabel"]
        let greeterLabel   = app.staticTexts["greetingTextLabel"]
        
        XCTAssert(enterNameLabel.exists)
        XCTAssertEqual(enterNameLabel.label, "Please enter your name below")

        XCTAssert(greeterLabel.exists)
        XCTAssert(greeterLabel.label.isEmpty)

        XCTAssert(textField.exists)
        XCTAssertEqual(textField.placeholderValue, "Your name")
    }
    
    func testGreeter() {
        let app = XCUIApplication()
        app.launch()

        let textLabel = app.staticTexts["greetingTextLabel"]
        let textField = app.textFields.element
        
        textField.tap()
        textField.typeText("J")
        textField.typeText("o")
        textField.typeText("n")
        textField.typeText("y")
        
        XCTAssertEqual(textLabel.label, "Nice to meet you, Jony.")
    }
}

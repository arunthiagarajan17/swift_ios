//
//  BaseTest.swift
//  SignInAppUITests
//
//  Created by Arun Thiagarajan on 09/08/2022.
//

import XCTest

class BaseTest: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["IOS TFL APP Testing"]
        app.launch()
    }

}


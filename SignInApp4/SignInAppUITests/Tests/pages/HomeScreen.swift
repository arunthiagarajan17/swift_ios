//
//  HomeScreen.swift
//  SignInAppUITests
//
//  Created by Arun Thiagarajan on 08/08/2022.
//

import XCTest

struct MessageScreen: Screen {
    let app: XCUIApplication

    func verifyMessage(_ message: String) -> Self {
        let message = app.staticTexts[message]
        XCTAssertTrue(message.waitForExistence(timeout: 5))
        return self
    }
}

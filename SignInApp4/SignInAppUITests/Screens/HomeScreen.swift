//
//  HomeScreen.swift
//  SignInAppUITests
//
//  Created by Arun Thiagarajan on 09/08/2022.
//

import XCTest

struct HomeScreen: Screen {
    let app: XCUIApplication
    
    private enum Identifiers {
        static let name = "Emma Smith"
        static let role = "Senior Test Analyst"
        static let location = "Pier Walk"
        static let signout = "Sign Out"
        static let signOutAlert = "Sign Out?"
    }
    

    func verifyMessage(_ message: String) -> Self {
        let message = app.staticTexts[message]
        XCTAssertTrue(message.waitForExistence(timeout: 5))
        return self
    }
    
    @discardableResult func verifyNameLabel(_ name: String) -> Self {
        let name = app.staticTexts[Identifiers.name]
        XCTAssertTrue(name.waitForExistence(timeout: 5))
        return self
    }
    
    @discardableResult func verifyRoleLabel(_ role: String) -> Self {
        let name = app.staticTexts[Identifiers.role]
        XCTAssertTrue(name.waitForExistence(timeout: 5))
        return self
    }
    
    @discardableResult  func verifyLocationLabel(_ role: String) -> Self {
        let name = app.staticTexts[Identifiers.location]
        XCTAssertTrue(name.waitForExistence(timeout: 5))
        return self
    }
    
   @discardableResult func signOut(_ signout: String) -> Self {
       app.staticTexts[Identifiers.signout].tap()
       app.alerts[Identifiers.signOutAlert].scrollViews.otherElements.buttons[Identifiers.signout].tap()
       return self
    
    }

                      
}


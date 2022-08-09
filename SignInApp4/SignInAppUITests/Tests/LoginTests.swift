//
//  LoginTests.swift
//  SignInAppUITests
//
//  Created by Arun Thiagarajan on 09/08/2022.
//

import XCTest
final class LoginTests: BaseTest {
    
   func testLoginFlow() {
            LoginScreen(app: app)
                .typeEmail("emma@tfl.gov.uk")
                .typePassword("password123")
                .signin()
                .verifyNameLabel("Emma Smith")
                .verifyRoleLabel("Senior Test Analyst")
                .verifyLocationLabel("Pier Walk")
                .signOut("Sign Out")
        }
    func testloginfailed() {
        LoginScreen(app: app)
            .typeEmail("arunthiagarajan17@gmail.com")
            .typePassword("password123")
            .loginErrorMessage("Looks like either your Username or Password is incorrect. Please try again.")
    }
    
}






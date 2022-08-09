//
//  LoginScreen.swift
//  SignInAppUITests
//
//  Created by Arun Thiagarajan on 09/08/2022.
//

import XCTest

protocol Screen {
    var app: XCUIApplication { get }
}

struct LoginScreen: Screen {
    let app: XCUIApplication

    private enum Identifiers {
        static let email = "TfL ID...."
        static let password = "Password..."
        static let signin = "Sign in"
        static let btndone = "Done"
        static let loginerror = "Login Error"
        static let loginerrormsg = "Looks like either your Username or Password is incorrect. Please try again."
        
        
    }
    
    func typeEmail(_ email1: String) -> Self {
           let email = app.textFields[Identifiers.email]
           email.tap()
           email.typeText(email1)
           return self
       }
    
    func typePassword(_ password: String) -> Self {
            let pwd = app.secureTextFields[Identifiers.password]
            pwd.tap()
            pwd.typeText(password)
            return self
        }
    
    @discardableResult func signin() -> HomeScreen {
        app.buttons[Identifiers.btndone].tap()
        app.buttons[Identifiers.signin].tap()
        return HomeScreen(app: app)
    }
    
    @discardableResult func loginErrorMessage(_ loginerror: String) -> Self {
        app.buttons[Identifiers.btndone].tap()
        app.buttons[Identifiers.signin].tap()
        let error = app.alerts[Identifiers.loginerror].scrollViews.otherElements
        error.staticTexts[Identifiers.loginerrormsg].tap()
        error.buttons[Identifiers.btndone].tap()
        return self
        
        
    }
    

}


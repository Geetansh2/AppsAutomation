//
//  ProfileScreenIG.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 25/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class ProfileScreenIG{
    var insta: XCUIApplication
    init(app: XCUIApplication) {
        insta=app
    }
    
    func clickDeleteButton(){
        let deleteButton = insta.buttons["Delete"]
        let exists  = deleteButton.waitForExistence(timeout: 3.0)
        XCTAssertTrue(exists,"Click delete button")
        deleteButton.tap()
    }
}

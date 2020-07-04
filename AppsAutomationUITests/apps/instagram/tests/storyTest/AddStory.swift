//
//  AddStory.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 30/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class AddStory: XCTestCase{
     var instaApp: XCUIApplication = Instagram().getBundler()
    var insta: Instagram = Instagram()
    var commonUtils: CommonUtils=CommonUtils()
    
    func testPostImageFirstTime()
    {
        commonUtils.launchApp(app: insta.getBundler())
        insta.homescreenIG.clickStoryButton()
        instaApp.swipeUp()
        instaApp.collectionViews.cells.element(boundBy: 0).tap()
        instaApp.buttons["Add text"].tap()
        instaApp.typeText("Hey")
        instaApp.buttons["Done"].tap()
        instaApp.buttons["Send to"].tap()
        instaApp.collectionViews.cells.otherElements["Button to share the message to Your Story"].tap()
        instaApp.buttons["Done"].tap()
        
    }
    
    
}

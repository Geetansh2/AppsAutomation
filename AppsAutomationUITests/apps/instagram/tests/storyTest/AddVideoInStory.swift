//
//  AddVideoInStory.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 04/07/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class AddVideoInStory: XCTestCase{
       var instaApp: XCUIApplication = Instagram().getBundler()
       var insta: Instagram = Instagram()
       var commonUtils: CommonUtils=CommonUtils()
    
    func testAddVideoInStoryFirstTime(){
        commonUtils.launchApp(app: insta.getBundler())
         insta.homescreenIG.clickStoryButton()
        sleep(2)
        instaApp.collectionViews.cells["Take photo or video"].press(forDuration: 15)
        instaApp.buttons["Send to"].tap()
        instaApp.collectionViews.cells.otherElements["Button to share the message to Your Story"].tap()
        instaApp.buttons["Done"].tap()
        
    }
    
}

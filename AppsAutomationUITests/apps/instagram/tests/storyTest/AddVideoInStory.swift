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
        print (instaApp.frame)
        instaApp.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0)).withOffset(CGVector(dx: 414/2, dy: 750)).press(forDuration: 15) 
        sleep(2)
        instaApp.buttons["Send to"].tap()
        sleep(2)
        instaApp.collectionViews.cells.otherElements["Button to share the message to Your Story"].tap()
        instaApp.buttons["Done"].tap()
    }
}

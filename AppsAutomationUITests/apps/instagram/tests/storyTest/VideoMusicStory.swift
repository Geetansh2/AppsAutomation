//
//  AddVideoInStory.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 04/07/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class VideoMusicStory: XCTestCase{
       var instaApp: XCUIApplication = Instagram().getBundler()
       var insta: Instagram = Instagram()
       var commonUtils: CommonUtils=CommonUtils()
       lazy var x  = instaApp.frame.width
       lazy var y =  instaApp.frame.height
    
    func testAddVideoInStoryFirstTime(){
        commonUtils.launchApp(app: insta.getBundler())
         insta.homescreenIG.clickStoryButton()
        print (instaApp.frame)
    
        instaApp.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0)).withOffset(CGVector(dx: x/2, dy: 0.837*y)).press(forDuration: 15)
        sleep(2)
        instaApp.buttons["Send to"].tap()
        sleep(2)
        instaApp.collectionViews.cells.otherElements["Button to share the message to Your Story"].tap()
        instaApp.buttons["Done"].tap()
      
    }
    
    func testAddVideoWithMusicFirstTime(){
        commonUtils.launchApp(app: insta.getBundler())
        insta.homescreenIG.clickStoryButton()
        print(instaApp.frame.height)
        print(instaApp.frame.width)
        instaApp.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0)).withOffset(CGVector(dx: x/2, dy: 0.837*y)).press(forDuration: 15)
        instaApp.swipeUp()
        instaApp.collectionViews.cells["Music sticker"].tap()
//        instaApp.textFields["Search Music"].typeText("Hey")
        instaApp.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0)).withOffset(CGVector(dx: x/2, dy: y/9)).tap()
       
        instaApp.typeText("Tu hi yaar mera")
        sleep(5)
        instaApp.staticTexts["Tu Hi Yaar Mera"].tap()
        instaApp.buttons["Done"].tap()
        instaApp.buttons["Send to"].tap()
        sleep(2)
        instaApp.collectionViews.cells.otherElements["Button to share the message to Your Story"].tap()
        instaApp.buttons["Done"].tap()
    }
}

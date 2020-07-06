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
        sleep(5)
          let start = report_memory()
            sleep(5)
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
        let end = report_memory()
        print ("-----------------------------------------------------------")
        print ("Memory at finish: \(Int(Int(end) - Int(start)) / 1024 )")
        sleep(10)
        
    }
    
    func report_memory()-> UInt64 {
    var taskInfo = mach_task_basic_info()
    var count = mach_msg_type_number_t(MemoryLayout<mach_task_basic_info>.size)/4
    let kerr: kern_return_t = withUnsafeMutablePointer(to: &taskInfo) {
        $0.withMemoryRebound(to: integer_t.self, capacity: 1) {
            task_info(mach_task_self_, task_flavor_t(MACH_TASK_BASIC_INFO), $0, &count)
        }
    }

        if kerr == KERN_SUCCESS {
            print("Memory in use (in bytes): \(taskInfo.resident_size)")
        }
        else {
            print("Error with task_info(): ")
        }
        return taskInfo.resident_size
    }
}

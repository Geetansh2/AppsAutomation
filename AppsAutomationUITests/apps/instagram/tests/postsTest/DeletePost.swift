//
//  DeletePost.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 25/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class DeletePost:XCTestCase{
    var instaApp: XCUIApplication = Instagram().getBundler()
    var insta: Instagram = Instagram()
    var commonUtils: CommonUtils = CommonUtils()
    
    func testDeletePost(){
        commonUtils.launchApp(app: insta.getBundler())
        insta.homescreenIG.clickProfileIcon()
        instaApp.collectionViews["self_profile"].cells.children(matching: .any).element(boundBy: 0).tap()
//        let x = instaApp.collectionViews["contextual-feed"].children(matching: .any).otherElements["header-view"]
        //Get frame size
        print (instaApp.frame)
        //Code for clicking at middle of screen
//        instaApp.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5))
        
        instaApp.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0)).withOffset(CGVector(dx: 413, dy: 896/7)).doubleTap()
        print ("Clicking on delete button")
        insta.profileScreenIG.clickDeleteButton()
        print ("Clicking on delete button")
        insta.profileScreenIG.clickDeleteButton()
    }
}

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
        let x = instaApp.collectionViews["contextual-feed"].children(matching: .any).otherElements["header-view"]
        print (x.frame)
        instaApp.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 88)).withOffset(CGVector(dx: 414, dy: 54)).tap()
        
    }
}

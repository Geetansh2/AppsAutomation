//
//  NewPost.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 25/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class NewPost:XCTestCase{
    var insta: Instagram=Instagram()
    var commonUtils: CommonUtils=CommonUtils()
    
    func testNewPost(){
        commonUtils.launchApp(app: insta.getBundler())
        insta.homescreenIG.clickNewPostIcon()
        insta.homescreenIG.clickOnNextButtonAfterNewPostIcon()
        insta.homescreenIG.clickOnNextButtonAfterNewPostIcon()
        insta.homescreenIG.writeACaption()
        insta.homescreenIG.clickOnOKButton()
        insta.homescreenIG.clickOnShareButton()
        
    }
    
    
}

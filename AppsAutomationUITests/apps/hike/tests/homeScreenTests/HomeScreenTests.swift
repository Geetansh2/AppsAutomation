//
//  HomeScreenTests.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 21/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class HomeScreenTests: XCTestCase{
    var app:XCUIApplication = Hike().getBundler()
    var hike:Hike=Hike()
//    var homescreen = Hike().homescreen
    let commonUtils: CommonUtils = CommonUtils()
    

    func testAbc(){
        commonUtils.launchApp(app: app)
//        hike.homescreen.clickOnNavBar()
    }
    
    
}

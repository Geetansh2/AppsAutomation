//
//  HomeScreen.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 21/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class HomeScreen: ButtonsLabel{
    var hike: XCUIApplication
    init(app: XCUIApplication) {
        hike=app
    }

    func clickOnNavBar(){
        hike.navigationBars[button.HomeScreenNavBar.element].tap()
    }
}

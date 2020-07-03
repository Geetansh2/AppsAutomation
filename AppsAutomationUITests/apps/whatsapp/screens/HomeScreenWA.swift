//
//  HomeScreen.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 22/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class HomeScreenWA: ButtonsLabelWA{
    var whatsapp:XCUIApplication
    init(app: XCUIApplication) {
        whatsapp=app
    }
    
    func clickONStatusTab(){
        whatsapp.tabBars.children(matching: .button).element(boundBy: 0).tap()
    }
    
    
}

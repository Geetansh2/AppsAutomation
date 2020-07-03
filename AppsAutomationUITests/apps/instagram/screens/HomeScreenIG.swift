//
//  HomeScreenIG.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 25/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class HomeScreenIG{
    var insta: XCUIApplication
    init(app: XCUIApplication) {
        insta=app
    }
    
    func clickNewPostIcon(){
        insta.buttons["Open Camera"].tap()
    }
    func clickOnNextButtonAfterNewPostIcon(){
        insta.navigationBars.buttons["Next"].tap()
    }
    func writeACaption(){
        insta.collectionViews.cells.children(matching: .any).textViews["caption-cell-text-view"].tap()
        let x = insta.textViews["caption-cell-text-view"]
        if x.exists{
            x.typeText("Hey")
        }
    }
    
    func clickOnOKButton(){
        insta.navigationBars.buttons["OK"].tap()
    }
    
    func clickOnShareButton(){
        insta.navigationBars.buttons["Share"].tap()
    }
    
    func clickProfileIcon(){
        insta.buttons["Profile Tab"].tap()
    }
    
}

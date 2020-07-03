//
//  StatusScreenWA.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 22/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class StatusScreenWA: ButtonsLabelWA{
    var whatsapp:XCUIApplication
    init(app: XCUIApplication) {
        whatsapp=app
    }
    
    func clickOnStatusText(){
        whatsapp.buttons["‎Compose text status"].tap()
    }
    
    func clickOnCameraIcon(){
        whatsapp.buttons[buttonWA.CameraStatusButton.elementWA].tap()
    }
    
    func typeStatus()
    {
        whatsapp.windows.otherElements.children(matching: .any).otherElements["Hi"].tap()
    }
    func clickOnSendButton(){
        sleep(2)
        whatsapp.buttons.element(boundBy: 3).tap()
    }
    
    func uploadImageFromCamera(){
        whatsapp.buttons.element(boundBy: 2).tap()
        whatsapp.textViews.element(boundBy: 0).tap()
        whatsapp.textViews.element(boundBy: 0).typeText("Hello, Its me")
        whatsapp.buttons.element(boundBy: 3).tap()
    }
    
}

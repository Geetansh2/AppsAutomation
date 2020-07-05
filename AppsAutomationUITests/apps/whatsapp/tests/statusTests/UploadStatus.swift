//
//  UploadStatus.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 22/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import XCTest
class UploadStatus:XCTestCase{
    var whatsapp = WhatsApp()
    var commonUtils: CommonUtils=CommonUtils()
    
    func testUploadStatus()
    {
        commonUtils.launchApp(app: whatsapp.getBundler())
        whatsapp.homescreenWA.clickONStatusTab()
        whatsapp.statusScreenWA.clickOnStatusText()
        whatsapp.statusScreenWA.typeStatus()
        whatsapp.statusScreenWA.clickOnSendButton()
                                                                                
    }
    
    func testUploadImage(){
        commonUtils.launchApp(app: whatsapp.getBundler())
        whatsapp.homescreenWA.clickONStatusTab()
        whatsapp.statusScreenWA.clickOnCameraIcon()
        whatsapp.statusScreenWA.uploadImageFromCamera()
    }
    
    
}

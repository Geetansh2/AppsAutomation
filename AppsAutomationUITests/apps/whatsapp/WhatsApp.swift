//
//  WhatsApp.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 22/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import XCTest
class WhatsApp{
    
    var bundler: XCUIApplication!
    lazy var homescreenWA: HomeScreenWA=HomeScreenWA(app: getBundler())
    lazy var statusScreenWA: StatusScreenWA=StatusScreenWA(app: getBundler())

    func getBundler()->XCUIApplication!{
        guard let app = bundler else{
            bundler = XCUIApplication(bundleIdentifier: "net.whatsapp.WhatsApp")
            return bundler
        }
        return app
    }
}

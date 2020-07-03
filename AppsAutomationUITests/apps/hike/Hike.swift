//
//  Hike.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 21/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//
import XCTest
import Foundation
class Hike{
    var bundler: XCUIApplication!
    lazy var homescreen: HomeScreen = HomeScreen.init(app: getBundler())
    
    func getBundler()->XCUIApplication!{
        guard let app = bundler else{
            bundler=XCUIApplication(bundleIdentifier: "com.bsb.hike.enterprise")
            return bundler
        }
        return app
    }
    
}

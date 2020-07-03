//
//  Instagram.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 24/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
import XCTest
class Instagram{
    var bundler:XCUIApplication!
    lazy var homescreenIG: HomeScreenIG = HomeScreenIG(app: getBundler())
    lazy var profileScreenIG: ProfileScreenIG = ProfileScreenIG(app: getBundler())
    func getBundler()->XCUIApplication!{
        guard let app = bundler else {
            bundler = XCUIApplication(bundleIdentifier: "com.burbn.instagram")
            return bundler
        }
        return app
    }
}

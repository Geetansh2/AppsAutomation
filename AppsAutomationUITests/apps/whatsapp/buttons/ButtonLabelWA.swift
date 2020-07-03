//
//  ButtonLabelWA.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 22/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation

class ButtonsLabelWA{
    
    enum buttonWA: String{
        case TestStatusButton, CameraStatusButton, T
    
    var elementWA: String{
        switch self {
        case .TestStatusButton:
            return "Compose text status"
        case .CameraStatusButton:
            return "Status camera"
        default:
            return "-1"
            }
        }
    }
}

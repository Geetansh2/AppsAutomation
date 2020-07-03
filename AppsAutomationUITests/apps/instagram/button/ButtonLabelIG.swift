//
//  ButtonLabelIG.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 25/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation

class ButtonsLabelIG{
    
    enum buttonIG: String{
        case TestStatusButton, CameraStatusButton, T
    
    var elementIG: String{
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

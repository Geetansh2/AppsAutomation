//
//  ButtonsLabel.swift
//  AppsAutomationUITests
//
//  Created by Geetansh on 21/06/20.
//  Copyright © 2020 Geetansh. All rights reserved.
//

import Foundation
class ButtonsLabel{
    
    enum button: String{
        case SearchIcon, NewChatIcon, ProfileButton, HomeScreenNavBar
    
    var element: String{
        switch self {
        case .SearchIcon:
            return "nav_search_icon"
        default:
            return "-1"
            }
        }
    }
}

//
//  ApplicationController.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 28/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import UIKit

final class ApplicationController {
    
    static var window: UIWindow?
    
    
    static func showFirstController(_ window: UIWindow) {
        ApplicationController.window = window
        showAuth()
    }
    
    static func showMain() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateInitialViewController() as? MainViewController
        window?.rootViewController = vc
    }
    
    private static func showAuth() {
        let authStoryboard = UIStoryboard(name: "Auth", bundle: nil)
        let vc = authStoryboard.instantiateInitialViewController() as? AuthViewController
        window?.rootViewController = vc
    }
    
}

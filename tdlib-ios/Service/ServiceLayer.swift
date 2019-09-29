//
//  ServiceLayer.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 28/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation

final class ServiceLayer {
    
    static let instance = ServiceLayer()
    
    let telegramService: TelegramService
    let authService: AuthService
    
    private init() {
        let logger = StdOutLogger()
        telegramService = TelegramService(logger: logger)
        authService = AuthService(tdApi: telegramService.api)
        telegramService.add(listener: authService)
    }
    
}

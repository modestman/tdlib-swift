//
//  AuthService.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 28/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit


protocol AuthServiceDelegate: class {
    func waitPhoneNumer()
    func waitCode()
    func waitPassword()
    func onReady()
}


final class AuthService: UpdateListener {
    
    // MARK: - Private properties
    
    private let api: TdApi
    private var authorizationState: AuthorizationState?
    
    
    // MARK: - Public properties
    
    private(set) var isAuthorized: Bool = false
    weak var delegate: AuthServiceDelegate?
    
    
    // MARK: - Init
    
    init(tdApi: TdApi) {
        self.api = tdApi
    }
    
    func onUpdate(_ update: Update) {
        if case .updateAuthorizationState(let state) = update {
            do {
                try onUpdateAuthorizationState(state.authorizationState)
            } catch {
                print(error)
            }
        }
    }
    
    func sendPhone(_ phone: String) {
        let settings = PhoneNumberAuthenticationSettings(
            allowFlashCall: false,
            allowSmsRetrieverApi: false,
            isCurrentPhoneNumber: false)
        try? self.api.setAuthenticationPhoneNumber(
            phoneNumber: phone,
            settings: settings,
            completion: { _ in })
    }
    
    func sendCode(_ code: String) {
        try? self.api.checkAuthenticationCode(code: code, completion: { _ in })
    }
    
    func sendPassword(_ password: String) {
        try? self.api.checkAuthenticationPassword(password: password, completion: { _ in })
    }
    
    
    // MARK: - Private methods
    
    private func onUpdateAuthorizationState(_ state: AuthorizationState) throws {
        authorizationState = state
        
        switch state {
        case .authorizationStateWaitTdlibParameters:
            guard let cachesUrl = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
                return
            }
            let tdlibPath = cachesUrl.appendingPathComponent("tdlib", isDirectory: true).path
            let params = TdlibParameters(
                apiHash: "5e6d7b36f0e363cf0c07baf2deb26076", // https://core.telegram.org/api/obtaining_api_id
                apiId: 287311,
                applicationVersion: "1.0",
                databaseDirectory: tdlibPath,
                deviceModel: "iOS",
                enableStorageOptimizer: true,
                filesDirectory: "",
                ignoreFileNames: true,
                systemLanguageCode: "en",
                systemVersion: "Unknown",
                useChatInfoDatabase: true,
                useFileDatabase: true,
                useMessageDatabase: true,
                useSecretChats: true,
                useTestDc: false)
            try api.setTdlibParameters(parameters: params, completion: { _ in })
            
        case .authorizationStateWaitEncryptionKey(_):
            let keyData = "sdfsdkjfkbsddsj".data(using: .utf8)!
            try api.checkDatabaseEncryptionKey(encryptionKey: keyData, completion: { _ in })
            
        case .authorizationStateWaitPhoneNumber:
            delegate?.waitPhoneNumer()
            
        case .authorizationStateWaitCode:
            delegate?.waitCode()
            
        case .authorizationStateWaitPassword(_):
            delegate?.waitPassword()
            
        case .authorizationStateReady:
            isAuthorized = true
            delegate?.onReady()
            
        case .authorizationStateLoggingOut:
            isAuthorized = false
            
        case .authorizationStateClosing:
            isAuthorized = false
            
        case .authorizationStateClosed:
            // TODO: close client
            break
            
        case .authorizationStateWaitRegistration:
            break
        }
    }
}

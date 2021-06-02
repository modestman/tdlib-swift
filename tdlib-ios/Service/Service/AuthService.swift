//
//  AuthService.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 28/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit


protocol AuthServiceDelegate: AnyObject {
    func waitPhoneNumer()
    func waitCode()
    func waitPassword()
    func onReady()
    func onError(_ error: Swift.Error)
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
            settings: settings) { [weak self] in
                self?.chekResult($0)
            }
    }
    
    func sendCode(_ code: String) {
        try? self.api.checkAuthenticationCode(code: code) { [weak self] in
            self?.chekResult($0)
        }
    }
    
    func sendPassword(_ password: String) {
        try? self.api.checkAuthenticationPassword(password: password) { [weak self] in
            self?.chekResult($0)
        }
    }
    
    public func logout() {
        try? self.api.logOut() { [weak self] in
            self?.chekResult($0)
        }
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
            try api.setTdlibParameters(parameters: params) { [weak self] in
                self?.chekResult($0)
            }
            
        case .authorizationStateWaitEncryptionKey(_):
            let keyData = "sdfsdkjfkbsddsj".data(using: .utf8)!
            try api.checkDatabaseEncryptionKey(encryptionKey: keyData) { [weak self] in
                self?.chekResult($0)
            }
            
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
            
        case .authorizationStateWaitOtherDeviceConfirmation(_):
            break
        }
    }
    
    private func chekResult(_ result: Result<Ok, Swift.Error>) {
        switch result {
        case .success:
            // result is already received through UpdateAuthorizationState, nothing to do
            break
        case .failure(let error):
            delegate?.onError(error)
        }
    }
}

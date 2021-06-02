//
//  DeleteAccount.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
public struct DeleteAccount: Codable {

    /// The reason why the account was deleted; optional
    public let reason: String


    public init(reason: String) {
        self.reason = reason
    }
}


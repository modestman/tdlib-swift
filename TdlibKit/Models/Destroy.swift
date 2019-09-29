//
//  Destroy.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed. After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent
public struct Destroy: Codable {


    public init () {
    }
}


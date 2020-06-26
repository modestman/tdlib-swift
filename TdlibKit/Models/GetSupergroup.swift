//
//  GetSupergroup.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot
public struct GetSupergroup: Codable {

    /// Supergroup or channel identifier
    public let supergroupId: Int


    public init (supergroupId: Int) {
        self.supergroupId = supergroupId
    }
}


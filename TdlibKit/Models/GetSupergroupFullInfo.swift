//
//  GetSupergroupFullInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns full information about a supergroup or channel by its identifier, cached for up to 1 minute
public struct GetSupergroupFullInfo: Codable {

    /// Supergroup or channel identifier
    public let supergroupId: Int


    public init (supergroupId: Int) {
        self.supergroupId = supergroupId
    }
}


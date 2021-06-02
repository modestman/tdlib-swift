//
//  ToggleSupergroupIsBroadcastGroup.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup
public struct ToggleSupergroupIsBroadcastGroup: Codable {

    /// Identifier of the supergroup
    public let supergroupId: Int


    public init(supergroupId: Int) {
        self.supergroupId = supergroupId
    }
}


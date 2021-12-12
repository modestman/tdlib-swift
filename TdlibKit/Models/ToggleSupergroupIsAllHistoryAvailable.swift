//
//  ToggleSupergroupIsAllHistoryAvailable.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Toggles whether the message history of a supergroup is available to new members; requires can_change_info administrator right
public struct ToggleSupergroupIsAllHistoryAvailable: Codable {

    /// The new value of is_all_history_available
    public let isAllHistoryAvailable: Bool?

    /// The identifier of the supergroup
    public let supergroupId: Int64?


    public init(
        isAllHistoryAvailable: Bool?,
        supergroupId: Int64?
    ) {
        self.isAllHistoryAvailable = isAllHistoryAvailable
        self.supergroupId = supergroupId
    }
}


//
//  AccountTtl.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about the period of inactivity after which the current user's account will automatically be deleted
public struct AccountTtl: Codable {

    /// Number of days of inactivity before the account will be flagged for deletion; should range from 30-366 days
    public let days: Int


    public init (days: Int) {
        self.days = days
    }
}


//
//  SetInactiveSessionTtl.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the period of inactivity after which sessions will automatically be terminated
public struct SetInactiveSessionTtl: Codable {

    /// New number of days of inactivity before sessions will be automatically terminated; 1-366 days
    public let inactiveSessionTtlDays: Int?


    public init(inactiveSessionTtlDays: Int?) {
        self.inactiveSessionTtlDays = inactiveSessionTtlDays
    }
}


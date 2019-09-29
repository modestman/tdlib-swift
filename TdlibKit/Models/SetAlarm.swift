//
//  SetAlarm.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Succeeds after a specified amount of time has passed. Can be called before authorization. Can be called before initialization
public struct SetAlarm: Codable {

    /// Number of seconds before the function returns
    public let seconds: Double


    public init (seconds: Double) {
        self.seconds = seconds
    }
}


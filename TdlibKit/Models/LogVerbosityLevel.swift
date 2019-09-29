//
//  LogVerbosityLevel.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a TDLib internal log verbosity level
public struct LogVerbosityLevel: Codable {

    /// Log verbosity level
    public let verbosityLevel: Int


    public init (verbosityLevel: Int) {
        self.verbosityLevel = verbosityLevel
    }
}


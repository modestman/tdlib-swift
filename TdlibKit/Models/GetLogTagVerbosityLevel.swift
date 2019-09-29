//
//  GetLogTagVerbosityLevel.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns current verbosity level for a specified TDLib internal log tag. This is an offline method. Can be called before authorization. Can be called synchronously
public struct GetLogTagVerbosityLevel: Codable {

    /// Logging tag to change verbosity level
    public let tag: String


    public init (tag: String) {
        self.tag = tag
    }
}


//
//  AddLogMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds a message to TDLib internal log. Can be called synchronously
public struct AddLogMessage: Codable {

    /// Text of a message to log
    public let text: String

    /// The minimum verbosity level needed for the message to be logged, 0-1023
    public let verbosityLevel: Int


    public init (
        text: String,
        verbosityLevel: Int) {

        self.text = text
        self.verbosityLevel = verbosityLevel
    }
}


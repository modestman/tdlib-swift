//
//  LanguagePackStrings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of language pack strings
public struct LanguagePackStrings: Codable {

    /// A list of language pack strings
    public let strings: [LanguagePackString]


    public init (strings: [LanguagePackString]) {
        self.strings = strings
    }
}


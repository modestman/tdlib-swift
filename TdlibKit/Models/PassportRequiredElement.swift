//
//  PassportRequiredElement.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a description of the required Telegram Passport element that was requested by a service
public struct PassportRequiredElement: Codable {

    /// List of Telegram Passport elements any of which is enough to provide
    public let suitableElements: [PassportSuitableElement]


    public init(suitableElements: [PassportSuitableElement]) {
        self.suitableElements = suitableElements
    }
}


//
//  BankCardActionOpenUrl.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an action associated with a bank card number
public struct BankCardActionOpenUrl: Codable {

    /// Action text
    public let text: String

    /// The URL to be opened
    public let url: String


    public init (
        text: String,
        url: String) {

        self.text = text
        self.url = url
    }
}


//
//  BankCardInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Information about a bank card
public struct BankCardInfo: Codable {

    /// Actions that can be done with the bank card number
    public let actions: [BankCardActionOpenUrl]

    /// Title of the bank card description
    public let title: String


    public init (
        actions: [BankCardActionOpenUrl],
        title: String) {

        self.actions = actions
        self.title = title
    }
}


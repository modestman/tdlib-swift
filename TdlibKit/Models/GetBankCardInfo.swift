//
//  GetBankCardInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a bank card
public struct GetBankCardInfo: Codable {

    /// The bank card number
    public let bankCardNumber: String


    public init(bankCardNumber: String) {
        self.bankCardNumber = bankCardNumber
    }
}


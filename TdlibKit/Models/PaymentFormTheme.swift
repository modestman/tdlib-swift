//
//  PaymentFormTheme.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Theme colors for a payment form
public struct PaymentFormTheme: Codable {

    /// A color of the payment form background in the RGB24 format
    public let backgroundColor: Int

    /// A color of the buttons in the RGB24 format
    public let buttonColor: Int

    /// A color of text on the buttons in the RGB24 format
    public let buttonTextColor: Int

    /// A color of hints in the RGB24 format
    public let hintColor: Int

    /// A color of links in the RGB24 format
    public let linkColor: Int

    /// A color of text in the RGB24 format
    public let textColor: Int


    public init(
        backgroundColor: Int,
        buttonColor: Int,
        buttonTextColor: Int,
        hintColor: Int,
        linkColor: Int,
        textColor: Int
    ) {
        self.backgroundColor = backgroundColor
        self.buttonColor = buttonColor
        self.buttonTextColor = buttonTextColor
        self.hintColor = hintColor
        self.linkColor = linkColor
        self.textColor = textColor
    }
}


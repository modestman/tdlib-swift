//
//  PageBlockCaption.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a caption of an instant view web page block, consisting of a text and a trailing credit
public struct PageBlockCaption: Codable {

    /// Block credit (like HTML tag <cite>)
    public let credit: RichText

    /// Content of the caption
    public let text: RichText


    public init(
        credit: RichText,
        text: RichText
    ) {
        self.credit = credit
        self.text = text
    }
}


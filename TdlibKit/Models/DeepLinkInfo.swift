//
//  DeepLinkInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a tg:// deep link
public struct DeepLinkInfo: Codable {

    /// True, if user should be asked to update the application
    public let needUpdateApplication: Bool

    /// Text to be shown to the user
    public let text: FormattedText


    public init(
        needUpdateApplication: Bool,
        text: FormattedText
    ) {
        self.needUpdateApplication = needUpdateApplication
        self.text = text
    }
}


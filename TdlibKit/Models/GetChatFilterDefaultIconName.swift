//
//  GetChatFilterDefaultIconName.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns default icon name for a filter. This is an offline method. Can be called before authorization. Can be called synchronously
public struct GetChatFilterDefaultIconName: Codable {

    /// Chat filter
    public let filter: ChatFilter


    public init (filter: ChatFilter) {
        self.filter = filter
    }
}


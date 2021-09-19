//
//  GetMessageFileType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a file with messages exported from another app
public struct GetMessageFileType: Codable {

    /// Beginning of the message file; up to 100 first lines
    public let messageFileHead: String?


    public init(messageFileHead: String?) {
        self.messageFileHead = messageFileHead
    }
}


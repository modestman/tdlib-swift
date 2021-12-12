//
//  CreateCall.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Creates a new call
public struct CreateCall: Codable {

    /// True, if a video call needs to be created
    public let isVideo: Bool?

    /// The call protocols supported by the application
    public let `protocol`: CallProtocol?

    /// Identifier of the user to be called
    public let userId: Int64?


    public init(
        isVideo: Bool?,
        `protocol`: CallProtocol?,
        userId: Int64?
    ) {
        self.isVideo = isVideo
        self.`protocol` = `protocol`
        self.userId = userId
    }
}


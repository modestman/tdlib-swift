//
//  CreateCall.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Creates a new call
public struct CreateCall: Codable {

    /// Description of the call protocols supported by the client
    public let `protocol`: CallProtocol

    /// Identifier of the user to be called
    public let userId: Int


    public init (
        `protocol`: CallProtocol,
        userId: Int) {

        self.`protocol` = `protocol`
        self.userId = userId
    }
}


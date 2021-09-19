//
//  RequestQrCodeAuthentication.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
public struct RequestQrCodeAuthentication: Codable {

    /// List of user identifiers of other users currently using the application
    public let otherUserIds: [Int]?


    public init(otherUserIds: [Int]?) {
        self.otherUserIds = otherUserIds
    }
}


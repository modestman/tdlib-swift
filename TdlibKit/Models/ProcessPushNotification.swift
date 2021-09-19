//
//  ProcessPushNotification.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization
public struct ProcessPushNotification: Codable {

    /// JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added
    public let payload: String?


    public init(payload: String?) {
        self.payload = payload
    }
}


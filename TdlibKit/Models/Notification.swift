//
//  Notification.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a notification
public struct Notification: Codable {

    /// Notification date
    public let date: Int

    /// Unique persistent identifier of this notification
    public let id: Int

    /// Notification type
    public let type: NotificationType


    public init (
        date: Int,
        id: Int,
        type: NotificationType) {

        self.date = date
        self.id = id
        self.type = type
    }
}


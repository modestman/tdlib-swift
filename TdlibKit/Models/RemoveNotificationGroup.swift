//
//  RemoveNotificationGroup.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user
public struct RemoveNotificationGroup: Codable {

    /// The maximum identifier of removed notifications
    public let maxNotificationId: Int

    /// Notification group identifier
    public let notificationGroupId: Int


    public init(
        maxNotificationId: Int,
        notificationGroupId: Int
    ) {
        self.maxNotificationId = maxNotificationId
        self.notificationGroupId = notificationGroupId
    }
}


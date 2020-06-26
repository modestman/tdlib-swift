//
//  SendMessageOptions.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Options to be used when a message is send
public struct SendMessageOptions: Codable {

    /// Pass true to disable notification for the message. Must be false if the message is sent to a secret chat
    public let disableNotification: Bool

    /// Pass true if the message is sent from the background
    public let fromBackground: Bool

    /// Message scheduling state. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
    public let schedulingState: MessageSchedulingState


    public init (
        disableNotification: Bool,
        fromBackground: Bool,
        schedulingState: MessageSchedulingState) {

        self.disableNotification = disableNotification
        self.fromBackground = fromBackground
        self.schedulingState = schedulingState
    }
}


//
//  ChatLists.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of chat lists
public struct ChatLists: Codable {

    /// List of chat lists
    public let chatLists: [ChatList]


    public init (chatLists: [ChatList]) {
        self.chatLists = chatLists
    }
}


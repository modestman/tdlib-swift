//
//  SetChatPhoto.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info rights. The photo will not be changed before request to the server has been completed
public struct SetChatPhoto: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New chat photo. You can use a zero InputFileId to delete the chat photo. Files that are accessible only by HTTP URL are not acceptable
    public let photo: InputFile


    public init (
        chatId: Int64,
        photo: InputFile) {

        self.chatId = chatId
        self.photo = photo
    }
}


//
//  TextMessage+ChatItemProtocol.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 06/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

protocol DemoMessageModelProtocol {
    
}

extension TextMessage: ChatItemProtocol {
    
    var uid: String {
        return "\(id)"
    }
    
    var type: ChatItemType {
        return "text-message-type"
    }
}

extension TextMessage: MessageModelProtocol, TextMessageModelProtocol, DemoMessageModelProtocol {
    
    var messageModel: MessageModelProtocol {
        return self
    }
    
    func hasSameContent(as anotherItem: ChatItemProtocol) -> Bool {
        return self.uid == anotherItem.uid
    }
    
    var senderId: String {
        return "\(senderUserId)"
    }
    
    var isIncoming: Bool {
        return !isOutgoing
    }
    
    var status: MessageStatus {
        get {
            return .success
        }
        set {
        }
    }
    
    var avatarImage: UIImage? {
        guard let data = self.user?.profileImage else { return nil }
        return UIImage(data: data)
    }
}

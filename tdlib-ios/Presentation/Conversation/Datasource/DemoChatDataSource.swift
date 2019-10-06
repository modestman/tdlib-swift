//
//  DemoChatDataSource.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 06/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import Chatto

class DemoChatDataSource: ChatDataSourceProtocol {
    
    let conversationService: ConversationService
    let preferredMaxWindowSize = 100
    weak var delegate: ChatDataSourceDelegateProtocol?

    init(conversationService: ConversationService) {
        self.conversationService = conversationService
        conversationService.delegate = self
        conversationService.getMessages()
    }


    var hasMoreNext: Bool {
        return false
    }

    var hasMorePrevious: Bool {
        return false
    }

    var chatItems: [ChatItemProtocol] {
        return conversationService.messages.reversed()
    }

    func loadNext() {

    }

    func loadPrevious() {

    }

    func addTextMessage(_ text: String) {
        conversationService.sendMessage(text: text)
        self.delegate?.chatDataSourceDidUpdate(self)
    }

    func addPhotoMessage(_ image: UIImage) {
     
    }


    func adjustNumberOfMessages(preferredMaxCount: Int?, focusPosition: Double, completion:(_ didAdjust: Bool) -> Void) {
        completion(false)
    }

    func replaceMessage(withUID uid: String, withNewMessage newMessage: ChatItemProtocol) {
        self.delegate?.chatDataSourceDidUpdate(self)
    }
}


extension DemoChatDataSource: ConversationServiceDelegate {
    
    func messagesUpdated() {
        self.delegate?.chatDataSourceDidUpdate(self)
    }
    
    func onError(_ error: Error) {
        print(error)
    }
    
}

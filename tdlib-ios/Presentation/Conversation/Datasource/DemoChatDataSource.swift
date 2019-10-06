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


    init(conversationService: ConversationService) {
        self.conversationService = conversationService
        
        conversationService.delegate = self
        conversationService.getMessages()
    }


    var hasMoreNext: Bool {
        return false
//        return self.slidingWindow.hasMore()
    }

    var hasMorePrevious: Bool {
        return false
//        return self.slidingWindow.hasPrevious()
    }

    var chatItems: [ChatItemProtocol] {
        return conversationService.messages.reversed()
//        return self.slidingWindow.itemsInWindow
    }

    weak var delegate: ChatDataSourceDelegateProtocol?

    func loadNext() {
//        self.slidingWindow.loadNext()
//        self.slidingWindow.adjustWindow(focusPosition: 1, maxWindowSize: self.preferredMaxWindowSize)
//        self.delegate?.chatDataSourceDidUpdate(self, updateType: .pagination)
    }

    func loadPrevious() {
//        self.slidingWindow.loadPrevious()
//        self.slidingWindow.adjustWindow(focusPosition: 0, maxWindowSize: self.preferredMaxWindowSize)
//        self.delegate?.chatDataSourceDidUpdate(self, updateType: .pagination)
    }

    func addTextMessage(_ text: String) {
        
//        let message = DemoChatMessageFactory.makeTextMessage(uid, text: text, isIncoming: false)
        
//        self.slidingWindow.insertItem(message, position: .bottom)
        self.delegate?.chatDataSourceDidUpdate(self)
    }

    func addPhotoMessage(_ image: UIImage) {
     
    }


    func adjustNumberOfMessages(preferredMaxCount: Int?, focusPosition: Double, completion:(_ didAdjust: Bool) -> Void) {
//        let didAdjust = self.slidingWindow.adjustWindow(focusPosition: focusPosition, maxWindowSize: preferredMaxCount ?? self.preferredMaxWindowSize)
        completion(false)
    }

    func replaceMessage(withUID uid: String, withNewMessage newMessage: ChatItemProtocol) {
//        let didUpdate = self.slidingWindow.replaceItem(withNewItem: newMessage) { $0.uid == uid }
//        guard didUpdate else { return }
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

//
//  BaseMessageHandler.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 06/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

protocol DemoMessageViewModelProtocol {
    var messageModel: DemoMessageModelProtocol { get }
}

class BaseMessageHandler {

    func userDidTapOnFailIcon(viewModel: DemoMessageViewModelProtocol) {
        print("userDidTapOnFailIcon")
    }

    func userDidTapOnAvatar(viewModel: MessageViewModelProtocol) {
        print("userDidTapOnAvatar")
    }

    func userDidTapOnBubble(viewModel: DemoMessageViewModelProtocol) {
        print("userDidTapOnBubble")
    }

    func userDidBeginLongPressOnBubble(viewModel: DemoMessageViewModelProtocol) {
        print("userDidBeginLongPressOnBubble")
    }

    func userDidEndLongPressOnBubble(viewModel: DemoMessageViewModelProtocol) {
        print("userDidEndLongPressOnBubble")
    }

    func userDidSelectMessage(viewModel: DemoMessageViewModelProtocol) {
        print("userDidSelectMessage")
    }

    func userDidDeselectMessage(viewModel: DemoMessageViewModelProtocol) {
        print("userDidDeselectMessage")
    }
}

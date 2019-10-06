//
//  TextMessageViewModelBuilder.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 06/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class DemoTextMessageViewModel: TextMessageViewModel<TextMessage>, DemoMessageViewModelProtocol {

    override init(textMessage: TextMessage, messageViewModel: MessageViewModelProtocol) {
        super.init(textMessage: textMessage, messageViewModel: messageViewModel)
    }

    var messageModel: DemoMessageModelProtocol {
        return self.textMessage
    }
}

class DemoTextMessageViewModelBuilder: ViewModelBuilderProtocol {
    public init() {}

    let messageViewModelBuilder = MessageViewModelDefaultBuilder()

    func createViewModel(_ textMessage: TextMessage) -> DemoTextMessageViewModel {
        let messageViewModel = self.messageViewModelBuilder.createMessageViewModel(textMessage)
        let textMessageViewModel = DemoTextMessageViewModel(textMessage: textMessage, messageViewModel: messageViewModel)
        textMessageViewModel.avatarImage.value = textMessage.avatarImage
        return textMessageViewModel
    }

    func canCreateViewModel(fromModel model: Any) -> Bool {
        return model is TextMessage
    }
}


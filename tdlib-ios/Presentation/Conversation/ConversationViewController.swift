//
//  ConversationViewController.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Chatto
import ChattoAdditions
import UIKit

final class ConversationViewController: BaseChatViewController {

    var chat: ChatInfo!
    
    private var chatInputPresenter: BasicChatInputBarPresenter!
    private var baseMessageHandler = BaseMessageHandler()
    private var dataSource: DemoChatDataSource!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = chat.title
        
        let conversationService = ConversationService(
            tdApi: ServiceLayer.instance.telegramService.api,
            userService: ServiceLayer.instance.userService,
            chatId: chat.id)
        ServiceLayer.instance.telegramService.add(listener: conversationService)
        
        dataSource = DemoChatDataSource(conversationService: conversationService)
        self.chatDataSource = dataSource
        self.chatItemsDecorator = DemoChatItemsDecorator()
    }
    
    
    // MARK: - Chatto configuration
    
    override func createChatInputView() -> UIView {
        let chatInputView = ChatInputBar.loadNib()
        var appearance = ChatInputBarAppearance()
        appearance.sendButtonAppearance.title = NSLocalizedString("Send", comment: "")
        appearance.textInputAppearance.placeholderText = NSLocalizedString("Type a message", comment: "")
        self.chatInputPresenter = BasicChatInputBarPresenter(chatInputBar: chatInputView, chatInputItems: self.createChatInputItems(), chatInputBarAppearance: appearance)
        chatInputView.maxCharactersCount = 1000
        return chatInputView
    }

    func createChatInputItems() -> [ChatInputItemProtocol] {
        var items = [ChatInputItemProtocol]()
        items.append(self.createTextInputItem())
        return items
    }

    private func createTextInputItem() -> TextChatInputItem {
        let item = TextChatInputItem()
        item.textInputHandler = { [weak self] text in
            self?.dataSource.addTextMessage(text)
        }
        return item
    }
    
    
    override func createPresenterBuilders() -> [ChatItemType: [ChatItemPresenterBuilderProtocol]] {
        let textMessagePresenter = TextMessagePresenterBuilder(
            viewModelBuilder: DemoTextMessageViewModelBuilder(),
            interactionHandler: GenericMessageHandler(baseHandler: self.baseMessageHandler)
        )
        textMessagePresenter.baseMessageStyle = BaseMessageCollectionViewCellAvatarStyle()
        
        return [
            "text-message-type": [textMessagePresenter]
        ]
    }
}

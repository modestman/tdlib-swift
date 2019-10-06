//
//  ConversationViewController.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import UIKit

final class ConversationViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    private var conversationService: ConversationService!
    
    var chat: ChatInfo!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        conversationService = ConversationService(tdApi: ServiceLayer.instance.telegramService.api, chatId: chat.id)
        ServiceLayer.instance.telegramService.add(listener: conversationService)
        conversationService.delegate = self
        conversationService.getMessages()
    }
    
    private func configureCollectionView() {
//        collectionView.collectionViewLayout = ChatCollectionViewFlowLayout()
        
        let incomingCell = UINib(nibName: IncomingMessageCell.identifier, bundle: nil)
        collectionView.register(incomingCell, forCellWithReuseIdentifier: IncomingMessageCell.identifier)
    }
}

extension ConversationViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return conversationService.messages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: IncomingMessageCell.identifier,
            for: indexPath) as! IncomingMessageCell
        let message = conversationService.messages[indexPath.row]
        cell.configure(with: message)
        return cell
    }
    
}


extension ConversationViewController: ConversationServiceDelegate {
    
    func messagesUpdated() {
        collectionView.reloadData()
    }
    
    func onError(_ error: Error) {
        print(error)
    }
    
}

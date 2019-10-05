//
//  ChatListViewController.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 29/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import UIKit

final class ChatListViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private let authService = ServiceLayer.instance.authService
    private let chatListService = ServiceLayer.instance.chatListService
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        chatListService.delegate = self
        try? chatListService.getChatList(limit: 30)
    }
    
    @IBAction func close(_ sender: Any) {
        authService.logout()
        ApplicationController.showAuth()
    }
    
}


extension ChatListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatListService.chatList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath)
        let chatOrder = chatListService.chatList[indexPath.row]
        guard let chat = chatListService.chats[chatOrder.chatId] else { preconditionFailure() }
        cell.textLabel?.text = chat.title
        cell.detailTextLabel?.text = "Unread: \(chat.unreadCount)"
        return cell
    }

}


extension ChatListViewController: ChatListServiceDelegate {
    
    func chatListUpdated() {
        tableView.reloadData()
    }
}


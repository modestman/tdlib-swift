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
        chatListService.delegate = self
        try? chatListService.getChatList(limit: 30)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            segue.identifier == "ShowChat",
            let vc = segue.destination as? ConversationViewController,
            let chat = sender as? ChatInfo
        else {
            return
        }
        vc.chat = chat
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
        cell.detailTextLabel?.text = chat.lastMessage?.text
        return cell
    }
}

extension ChatListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chatOrder = chatListService.chatList[indexPath.row]
        guard let chat = chatListService.chats[chatOrder.chatId] else { preconditionFailure() }
        
        let vc = ConversationViewController()
        vc.chat = chat
        show(vc, sender: self)
        
//        performSegue(withIdentifier: "ShowChat", sender: chat)
    }
    
}


extension ChatListViewController: ChatListServiceDelegate {
    
    func chatListUpdated() {
        tableView.reloadData()
    }
}


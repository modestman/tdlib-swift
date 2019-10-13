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
    
    private var conversationService: ConversationService!
    
    var chat: ChatInfo!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        conversationService = ConversationService(tdApi: ServiceLayer.instance.telegramService.api, chatId: chat.id)
        ServiceLayer.instance.telegramService.add(listener: conversationService)
        conversationService.delegate = self
        conversationService.getMessages()
    }
    
    private func configureTableView() {


    }
}

extension ConversationViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversationService.messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as! TextMessageCell
        let message = conversationService.messages[indexPath.row]
        cell.configure(message)
        return cell
    }
}


extension ConversationViewController: ConversationServiceDelegate {
    
    func messagesUpdated() {
        tableView.reloadData()
    }
    
    func onError(_ error: Error) {
        print(error)
    }
    
}

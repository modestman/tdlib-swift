//
//  ChatListViewController.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 29/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import UIKit

final class ChatListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: Any) {
        ServiceLayer.instance.telegramService.api.client.close()
    }
    
}

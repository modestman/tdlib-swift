//
//  TextMessageCell.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import UIKit

class TextMessageCell: UITableViewCell {
    
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var messageLabel: UILabel!

    override func prepareForReuse() {
        authorLabel.text = nil
        messageLabel.text = nil
    }
    
    func configure(_ message: TextMessage) {
        authorLabel.text = message.user?.name
        messageLabel.text = message.text
    }

}

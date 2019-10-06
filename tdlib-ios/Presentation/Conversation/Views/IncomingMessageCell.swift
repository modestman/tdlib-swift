//
//  IncomingMessageCell.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 06/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import UIKit

class IncomingMessageCell: UICollectionViewCell {
    
    static let identifier = String(describing: IncomingMessageCell.self)
    
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2.0
    }
    
    override func prepareForReuse() {
        authorLabel.text = nil
        textLabel.text = nil
    }

    func configure(with message: TextMessage) {
        authorLabel.text = message.user?.name
        textLabel.text = message.text
        dateLabel.isHidden = true
    }
    
}

//
//  BaseMessageCollectionViewCellAvatarStyle.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 06/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import ChattoAdditions

class BaseMessageCollectionViewCellAvatarStyle: BaseMessageCollectionViewCellDefaultStyle {
    override func avatarSize(viewModel: MessageViewModelProtocol) -> CGSize {
        // Display avatar for both incoming and outgoing messages for demo purpose
        return CGSize(width: 35, height: 35)
    }
}

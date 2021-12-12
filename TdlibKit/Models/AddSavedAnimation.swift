//
//  AddSavedAnimation.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first. Only non-secret video animations with MIME type "video/mp4" can be added to the list
public struct AddSavedAnimation: Codable {

    /// The animation file to be added. Only animations known to the server (i.e., successfully sent via a message) can be added to the list
    public let animation: InputFile?


    public init(animation: InputFile?) {
        self.animation = animation
    }
}


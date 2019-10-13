//
//  AppDelegate.swift
//  tdlib-macos
//
//  Created by Anton Glezman on 25/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Cocoa
import TdlibKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var client: TdClient!

    func applicationDidFinishLaunching(_ aNotification: Foundation.Notification) {
        client = TdClientImpl(completionQueue: .main, logger: nil)
        client.run(updateHandler: { _ in })
    }

    func applicationWillTerminate(_ aNotification: Foundation.Notification) {
        // Insert code here to tear down your application
    }


}


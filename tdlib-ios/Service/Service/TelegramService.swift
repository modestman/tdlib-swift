//
//  Application.swift
//  td
//
//  Created by Anton Glezman on 19/09/2019.
//  Copyright © 2019 Anton Glezman . All rights reserved.
//

import Foundation
import TdlibKit


public protocol UpdateListener: class {
    func onUpdate(_ update: Update)
}


final class TelegramService {
    
    // MARK: - Public properties
    
    let api: TdApi
    
    
    // MARK: - Private properties
    
    private let logger: Logger
    private var listeners: [UpdateListenerWeakBox] = []
    
    
    // MARK: - Init
    
    init(logger: Logger) {
        let client = TdClientImpl(completionQueue: .main, logger: logger)
        self.api = TdApi(client: client)
        self.logger = logger
    }
    
    
    // MARK: - Public methods
    
    func run() {
        api.client.run { [unowned self] in
            do {
                let update = try self.api.decoder.decode(Update.self, from: $0)
                try self.processUpdate(update)
            } catch {
                self.logger.log(error.localizedDescription, type: .custom("Error"))
            }
        }
        
        let query = SetLogVerbosityLevel(newVerbosityLevel: 5)
        api.client.execute(query: DTO(query))
    }
    
    func add(listener: UpdateListener) {
        let box = UpdateListenerWeakBox(value: listener)
        listeners.append(box)
        listeners.compact()
    }
    
    func remove(listener: UpdateListener) {
        var listenerIndex: Int = -1
        for (index, existingListener) in listeners.enumerated() {
            if listener === existingListener.value {
                listenerIndex = index
                break
            }
        }
        if listenerIndex >= 0 {
            listeners.remove(at: listenerIndex)
        }
        listeners.compact()
    }
    
    
    // MARK: - Private methods
    
    private func processUpdate(_ update: Update) throws {
        listeners.forEach {
            $0.value?.onUpdate(update)
        }
    }
    
}


final class UpdateListenerWeakBox {
    private(set) weak var value: UpdateListener?
    
    init(value: UpdateListener?) {
        self.value = value
    }
}

private extension Array where Element == UpdateListenerWeakBox {
    mutating func compact() {
        self = self.filter { $0.value != nil }
    }
}

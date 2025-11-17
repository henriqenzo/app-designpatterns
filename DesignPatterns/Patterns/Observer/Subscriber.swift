//
//  Subscriber.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import Foundation
import Combine

class Subscriber {
    let name: String
    
    var subscriptions = Set<AnyCancellable>()
    
    init(name: String) {
        self.name = name
    }
    
    func subscribe(to channel: YouTubeChannel) {
        channel.newVideoNotification
            .sink { videoTitle in
                print("👤 \(self.name) recebeu notificação: Assistindo '\(videoTitle)'")
            }
            .store(in: &subscriptions)
            
        print("✅ \(name) inscrito no \(channel.name)")
    }
}

//
//  YTChannel.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import Combine
import Foundation

class YouTubeChannel {
    let name: String
    
    let newVideoNotification = PassthroughSubject<String, Never>()
    
    init(name: String) {
        self.name = name
    }
    
    func uploadVideo(title: String) {
        print("\n🔴 [CANAL \(name)]: Subindo vídeo '\(title)'...")
        newVideoNotification.send(title)
    }
}

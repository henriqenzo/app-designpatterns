//
//  Task.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import Foundation

struct Task {
    var id: UUID = UUID()
    var title: String
    var creationDate: Date = .now
    var priority: TaskPriority = .low
}

enum TaskPriority {
    case low, medium, high
}

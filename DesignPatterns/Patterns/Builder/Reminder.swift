//
//  Reminder.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

struct Reminder {
    let id: Int
    let title: String
    let date: Date?
    let location: String?
    let priority: ReminderPriority
}

enum ReminderPriority {
    case none, low, medium, high
}

//
//  ReminderBuilder.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

class ReminderBuilder {
    private var id: Int = 1
    private var title: String = ""
    private var date: Date?
    private var location: String?
    private var priority: ReminderPriority = .none

    func setId(_ id: Int) -> ReminderBuilder {
        self.id = id
        return self
    }

    func setTitle(_ title: String) -> ReminderBuilder {
        self.title = title
        return self
    }

    func setDate(_ date: Date) -> ReminderBuilder {
        self.date = date
        return self
    }

    func setLocation(_ location: String) -> ReminderBuilder {
        self.location = location
        return self
    }

    func setPriority(_ priority: ReminderPriority) -> ReminderBuilder {
        self.priority = priority
        return self
    }

    func build() -> Reminder {
        return Reminder(id: id, title: title, date: date, location: location, priority: priority)
    }
}

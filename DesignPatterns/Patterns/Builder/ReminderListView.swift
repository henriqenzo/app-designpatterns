//
//  ReminderListView.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import SwiftUI

struct ReminderListView: View {
    
    private var reminders: [Reminder] = [
        ReminderBuilder().setId(1).setTitle("Estudar Swift").setPriority(.high).build(),
        ReminderBuilder().setId(2).setTitle("Ir para academia").setLocation("Smart Fit").build()
    ]
    
    private func getExclamations(priority: ReminderPriority) -> String {
        switch priority {
            case .none: return ""
            case .low: return "!"
            case .medium: return "!!"
            case .high: return "!!!"
        }
    }

    var body: some View {
        List(reminders, id: \.id) { reminder in
            HStack {
                Text(reminder.title)
                Text(getExclamations(priority: reminder.priority))
            }
        }
    }
}

#Preview {
    ReminderListView()
}

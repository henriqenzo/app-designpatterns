//
//  TaskService.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import Foundation
import Combine

class TaskService: ObservableObject {
    static let shared = TaskService()

    private init() {}

    @Published var tasks: [Task] = []
    
    func addTask(_ task: Task) {
        tasks.append(task)
    }
}

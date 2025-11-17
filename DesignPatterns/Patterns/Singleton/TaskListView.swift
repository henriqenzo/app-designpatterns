//
//  TaskListView.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskService = TaskService.shared
    @State var titleText: String = ""
    
    var body: some View {
        VStack(spacing: 12) {
            VStack(spacing: 24) {
                Text("Adicionar Tarefa")
                    .font(.headline)
                
                TextField("Digite o título da tarefa", text: $titleText)
                    .frame(width: 250)
                    .padding(.horizontal, 12)
                    .padding(.vertical)
                    .border(Color.gray)

                
                Button("Adicionar") {
                    addButtonTapped()
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .disabled(titleText.isEmpty)
            }
            
            List(taskService.tasks, id: \.id) { task in
                Text(task.title)
            }
        }
        .padding(24)
    }
    
    func addButtonTapped() {
        let newTask = Task(title: titleText)
        TaskService.shared.addTask(newTask)
        titleText = ""
    }
}

#Preview {
    TaskListView()
}

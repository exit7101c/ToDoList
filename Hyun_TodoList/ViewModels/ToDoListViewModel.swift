//
//  ToDoListViewModel.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//


import Foundation

// ViewModel 아이템 목록
// Primary
class TodoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
}

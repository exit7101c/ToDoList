//
//  ToDoListViewModel.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import FirebaseFirestore
import Foundation

// ViewModel 아이템 목록
// Primary
class TodoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String

    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: item id to delete 
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}

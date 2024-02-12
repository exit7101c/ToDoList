//
//  ToDoListItemViewModel.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//


import FirebaseAuth
import FirebaseFirestore
import Foundation

// ViewModel 단일 작업 항목 (각 행 항목 리스트)
// Primary
class ToDoListItemViewModel: ObservableObject {
    
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
}

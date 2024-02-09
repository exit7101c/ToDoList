//
//  NewItemViewModel.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        guard canSave else {
            return
        }
        
        // 데이터베이스에서 가져올 아이디
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        // 생성 모델
        let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: newId
            , title: title
            , dueDate: Date().timeIntervalSince1970
            , createDate: Date().timeIntervalSince1970
            , isDone: false
        )
        
        // 저장 모델
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
        
    }
    
    var canSave: Bool {
        // 공백인지 체크
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        // 날짜가 오늘보다 크거나 같은지 확인
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
            
    }
}

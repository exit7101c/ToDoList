//
//  NewItemViewModel.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//


import Foundation

class NewItemViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    
    init() {}
    
    func save() {
        
        
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

//
//
//  TodoListItemsView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel = TodoListViewModel()
    @FirestoreQuery var item: [ToDoListItem]
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        // users/<id>/todos/<entries>
        self._item = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(item) { item in
                    Text(item.title)
                }
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // 버튼에 들어갈 액션 
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct TodoListView_Preview: PreviewProvider {
    static var previews: some View {
        TodoListView(userId: "")
    }
}

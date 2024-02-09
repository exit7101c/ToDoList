//
//  TodoListItemsView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel = TodoListViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // 버튼에 들어갈 액션 
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct TodoListView_Preview: PreviewProvider {
    static var previews: some View {
        TodoListView(userId: "")
    }
}

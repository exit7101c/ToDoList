//
//  ContentView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/5/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedId, !viewModel.currentUserId.isEmpty {
            // 로그인
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            TodoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

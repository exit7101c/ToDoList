//
//  Hyun_TodoListApp.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/5/24.
//
import Firebase
import SwiftUI

@main
struct Hyun_TodoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

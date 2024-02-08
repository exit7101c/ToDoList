//
//  MainViewModel.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import FirebaseAuth
import Foundation

class MainViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        let handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedId: Bool {
        // nil 과 같으면 로그인 되어있는상태
        return Auth.auth().currentUser != nil
    }
}

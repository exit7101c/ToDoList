//
//  ContentView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/5/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

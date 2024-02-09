//
//  ProfileView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Preview: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


//
//  LoginView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(
                    title: "To Do List"
                    , subtitle: "Hyun"
                    , angle: 15
                    , background: .pink)
                
                // Login Form
                Form {
                    TextField("Enail Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Login"
                        , background: .blue
                    ) {
                       // action login
                        
                    }
                    .padding()
                }
                .offset(y: -100)
                
                // Create Account
                VStack {
                    Text("New around her?")
                    
                    NavigationLink(
                        "Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 20)
                Spacer()
            }
        }
        
    }
}

struct LoginView_Preview: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//
//  LoginView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
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
                    TextField("Enail Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TextField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                            Text("Login")
                                .foregroundColor(.white)
                                .bold()
                        }
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

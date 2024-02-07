//
//  RegisterView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(
                title: "Register"
                , subtitle: "Start organizing todo"
                , angle: -15
                , background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
            }
            
            Spacer()
        }
        
    }
}

struct RegisterView_Preview: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}


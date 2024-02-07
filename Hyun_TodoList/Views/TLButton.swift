//
//  TLButton.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/7/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

struct TLButton_Preview: PreviewProvider {
    static var previews: some View {
        TLButton(
            title: "Value"
            , background: .pink ) {
                // action 
            }
    }
}

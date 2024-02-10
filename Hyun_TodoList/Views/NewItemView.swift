//
//  NewItemView.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("새로운 할일")
                .font(.system(size: 32))
                .bold()
                .padding()
            
            Form {
                // 할일
                TextField("할일", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // 날짜
                DatePicker("날짜", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // ButtonshowAlert
                TLButton(
                    title: "저장"
                    , background: .pink
                ) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("경고")
                    , message: Text("양식에 맞게 다시 진행해주세요. ( 날짜는 과거로 갈수없으며 할일은 공백이면 안됩니다.")
                )
            }
        }
    }
}

struct NewItemView_Preview: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPresented: Binding(get: {
            return true
        }, set: { _ in

        }))
    }
}

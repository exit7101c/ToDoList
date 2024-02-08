//
//  LoginViewModel.swift
//  Hyun_TodoList
//
//  Created by hyun on 2/6/24.
//
import FirebaseAuth
import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    // 로그인 함수
    func login() {
        // 로그인시 유효성 체크
        guard validate() else {
            return
        }
        
        // 유효성 체크가 정상이라면 파이어베이스를 이용해 로그인 시도.
        Auth.auth().signIn(withEmail: email, password: password)
        
        
        
        
    }
    
    // 유효성 검사
    private func validate() -> Bool {
        
        // 빈공간이 있는지 체크
        errorMessage = "" // 이 함수가 처음열릴때 문자열을 초기화시킨다.
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty
            , !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "이메일과, 비밀번호를 모두 입력해주세요."
            return false
        }
        
        // 이메일에 @ 가 들어가있는지 체크
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "잘못된 이메일 입니다."
            return false
        }
        
        return true
    }
}

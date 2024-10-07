//
//  ContentView.swift
//  ValidationMVVM
//
//  Created by Ricky Primayuda Putra on 07/10/24.
//

import SwiftUI

//struct LoginState {
//    var email: String = ""
//    var password: String = ""
//    var emailError: LoginError?
//    var passwordError: LoginError?
//    
//    mutating func clearErrors() {
//        emailError = nil
//        passwordError = nil
//    }
//}

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errors: [LoginError] = []
    
    var isValid: Bool {
        
        errors.removeAll()
        
        if email.isEmpty {
            errors.append(.emailEmpty)
        } else if email.isValidEmail {
            errors.append(.emailInvalid)
        }
        
        if password.isEmpty {
            errors.append(.passwordEmpty)
        }
        
        return errors.isEmpty
    }
    
    var body: some View {
        Form {
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
        
            SecureField("Password", text: $password)
            
            Button("Login") {
                if isValid {
                    print("Login Success")
                }
            }
            
            ValidationSummaryView(errors: errors)
        }
    }
}

#Preview {
    ContentView()
}

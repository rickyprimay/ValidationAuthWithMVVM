//
//  LoginError.swift
//  ValidationMVVM
//
//  Created by Ricky Primayuda Putra on 07/10/24.
//

import SwiftUI

enum LoginError: Error, LocalizedError, Identifiable {
    case emailEmpty
    case emailInvalid
    case passwordEmpty
    
    var id: Int {
        hashValue
    }
    
    var errorDescription: String? {
        switch self {
        case .emailEmpty:
            return "Email is Required!"
        case .emailInvalid:
            return "Email is not in correct format"
        case .passwordEmpty:
            return "Password is Required!"
        }
    }
}

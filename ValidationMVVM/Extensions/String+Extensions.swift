//
//  String+Extensions.swift
//  ValidationMVVM
//
//  Created by Ricky Primayuda Putra on 07/10/24.
//

import SwiftUI

extension String {
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return predicate.evaluate(with: self)
    }
}

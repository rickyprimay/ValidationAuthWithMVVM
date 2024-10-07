//
//  LocalizedError+Extensions.swift
//  ValidationMVVM
//
//  Created by Ricky Primayuda Putra on 07/10/24.
//

import SwiftUI

extension LocalizedError {
    
    var id: Int {
        localizedDescription.hashValue
    }
    
}

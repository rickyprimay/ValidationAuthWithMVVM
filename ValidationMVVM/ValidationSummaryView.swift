//
//  ValidationSummaryView.swift
//  ValidationMVVM
//
//  Created by Ricky Primayuda Putra on 07/10/24.
//

import SwiftUI

struct ValidationSummaryView: View {
    
    let errors: [LocalizedError]
    
    var body: some View {
        ForEach(errors, id: \.id) { error in
            Text(error.localizedDescription)
                .foregroundColor(.red)
        }
    }
}



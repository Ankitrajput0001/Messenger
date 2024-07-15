//
//  RegistrationViewModel.swift
//  Messenger
//
//  Created by Ankit Rajput on 11/07/24.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullName: fullName)
    }
    
}

//
//  LoginViewModel.swift
//  Messenger
//
//  Created by Ankit Rajput on 11/07/24.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}

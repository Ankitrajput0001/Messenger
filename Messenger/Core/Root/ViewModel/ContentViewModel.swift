//
//  ContentViewModel.swift
//  Messenger
//
//  Created by Ankit Rajput on 11/07/24.
//

import Firebase
import Combine

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setUpSubscribers()
    }
    
    private func setUpSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        }.store(in: &cancellables)
    }
}

//
//  User.swift
//  Messenger
//
//  Created by Ankit Rajput on 11/07/24.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let fullName: String
    let email: String
    var profileImageUrl: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
    
    var firstName: String {
        let formatter = PersonNameComponentsFormatter()
        let components = formatter.personNameComponents(from: fullName)
        return components?.givenName ?? fullName
    }
}

extension User {
    static let MOCK_USER = User(fullName: "Allex R", email: "allexr@gmail.com", profileImageUrl: "batman")
}

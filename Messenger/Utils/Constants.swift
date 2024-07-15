//
//  Constants.swift
//  Messenger
//
//  Created by Ankit Rajput on 12/07/24.
//

import Foundation
import Firebase

struct FirestoreConstants {
    static let UserCollection = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
}

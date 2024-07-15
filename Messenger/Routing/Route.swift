//
//  Route.swift
//  Messenger
//
//  Created by Ankit Rajput on 12/07/24.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}

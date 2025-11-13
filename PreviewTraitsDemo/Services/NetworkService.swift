//
//----------------------------------------------
// Original project: PreviewTraitsDemo
//
// Follow me on Mastodon: https://iosdev.space/@StewartLynch
// Follow me on Threads: https://www.threads.net/@stewartlynch
// Follow me on Bluesky: https://bsky.app/profile/stewartlynch.bsky.social
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Email: slynch@createchsol.com
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2026 CreaTECH Solutions (Stewart Lynch). All rights reserved.

import SwiftUI

@Observable
class NetworkService {
    var users: [User] = []
    let mockData: Bool
    
    init(mockData: Bool = false) {
        self.mockData = mockData
        loadUsers()
    }
    
    struct User: Identifiable {
        let id: UUID
        let name: String
        let email: String
    }
    
    func loadUsers() {
        if mockData {
            users = [
                User(id: UUID(), name: "Stewart Lynch", email: "slynch@createchsol.com"),
                User(id: UUID(), name: "Bob Smith", email: "bob@example.com"),
                User(id: UUID(), name: "Carol Williams", email: "carol@example.com"),
                User(id: UUID(), name: "David Brown", email: "david@example.com")
            ]
        } else {
            print("Users loaded")
        }
    }
}

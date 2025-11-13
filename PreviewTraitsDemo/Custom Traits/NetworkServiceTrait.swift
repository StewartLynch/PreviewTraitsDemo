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
// Copyright © 2025 CreaTECH Solutions (Stewart Lynch). All rights reserved.


import SwiftUI

struct NetworkServiceTrait: PreviewModifier {
    func body(content: Content, context: NetworkService) -> some View {
        content
            .environment(context)
    }
    
    static func makeSharedContext() async throws -> NetworkService {
        let service = NetworkService(mockData: true)
        return service
    }
}

extension PreviewTrait where T == Preview.ViewTraits {
    static var mockNetworkService: Self = .modifier(NetworkServiceTrait())
}

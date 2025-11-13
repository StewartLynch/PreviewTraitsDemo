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

struct AssistiveAccessTrait: View {
    @State private var toggle = false
    @Environment(NavigationManager.self) private var navManager
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Button("Call Mom") {
                    print("Calling...")
                }
                .buttonStyle(.borderedProminent)
                
                Button("Send Text") {
                    print("Texting...")
                }
                .buttonStyle(.bordered)
                
                Toggle("Wi-Fi", isOn: $toggle)
                
                List {
                    NavigationLink("Mom") {
                        Text("Mom's Details")
                    }
                    NavigationLink("Dad") {
                        Text("Dad's Details")
                    }
                    NavigationLink("Sister") {
                        Text("Sister's Details")
                    }
            }
            }
            .padding()
            .navigationTitle(navManager.selectedTab.title)
            .toolbarTitleDisplayMode(.inlineLarge)
        }
    }
}

#Preview("Normal", traits: .navTrait(selected: .assistiveAccess)) {
    AssistiveAccessTrait()
}

#Preview("Assistive Access", traits: .assistiveAccess, .navTrait(selected: .assistiveAccess)) {
    AssistiveAccessTrait()
}

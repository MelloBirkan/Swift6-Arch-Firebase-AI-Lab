//
//  TabBarView.swift
//  AIChat
//
//  Created by Marcello Gonzatto Birkan on 15/09/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "eyes")
                }
            
            ChatsView()
                .tabItem {
                    Label("Chats", systemImage: "bubble.left.and.bubble.right.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Explore", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    TabBarView()
}

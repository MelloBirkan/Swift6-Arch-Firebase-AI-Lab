//
//  AppView.swift
//  AIChat
//
//  Created by Marcello Gonzatto Birkan on 15/09/25.
//

import SwiftUI

struct AppView: View {
    @AppStorage("showTabbarView") var showTabBar: Bool = false
    
    var body: some View {
        AppViewBuilder(
            showTabBar: showTabBar,
            tabbarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
    }
}

#Preview {
    AppView(showTabBar: false)
}

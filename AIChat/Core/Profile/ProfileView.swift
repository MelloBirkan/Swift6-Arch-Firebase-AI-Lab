//
//  ProfileView.swift
//  AIChat
//
//  Created by Marcello Gonzatto Birkan on 16/09/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var showSettingsView: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("profile")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        settingButton
                    }
                }
                .sheet(isPresented: $showSettingsView) {
                    Text("Settings")
                }
        }
    }
    private var settingButton: some View {
        Button {
            onSettingsButtonPressed()
        } label: {
            Image(systemName: "gear")
                .font(.headline)
                .foregroundStyle(.accent)
        }
    }
    
    private func onSettingsButtonPressed() {
        showSettingsView.toggle()
    }
}

#Preview {
    ProfileView()
}

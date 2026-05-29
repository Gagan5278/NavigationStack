//
//  LogoutView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct LogoutView: View {
    let coordinator: AppCoordinator
    var body: some View {
        VStack {
            Button {
                coordinator.logout()
            } label: {
                Text("Logout")
                    .font(.title2.bold())
                    .padding(.horizontal, 40)
                    .padding(.vertical, 5)
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.accentColor.opacity(0.1))
        .navigationTitle("Logout")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LogoutView(coordinator: AppCoordinator())
}

//
//  SettingsView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct SettingsView: View {
    let coordinator: AppCoordinator
    var body: some View {
        List {
            Text("Payment")
            Text("Notifications")
            titleView("Logout")
                .onTapGesture {
                    coordinator.settingCoordinator.settingPath.append(SettingsRoute.logout)
                }
        }
        .listStyle(.insetGrouped)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .scrollContentBackground(.hidden)
        .background(Color.red.opacity(0.05))
        .navigationTitle("Setting View")
    }
    
    private func titleView(_ title: String) -> some View {
        return HStack {
            Text(title)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .foregroundStyle(.black)
    }

}

#Preview {
    SettingsView(coordinator: AppCoordinator())
}

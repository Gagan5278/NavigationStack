//
//  SetingContainerView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct SetingContainerView: View {
    @Bindable var coordinator: AppCoordinator
    var body: some View {
        NavigationStack(path: $coordinator.settingCoordinator.settingPath) {
            SettingsView(coordinator: coordinator)
                .navigationDestination(for: SettingsRoute.self) { route in
                    switch route {
                    case .logout:
                        LogoutView(coordinator: coordinator)
                    }
                }
        }
    }
}

#Preview {
    SetingContainerView(coordinator: AppCoordinator())
}

//
//  MainTabView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct MainTabView: View {
    @Bindable var coordinator: AppCoordinator
    
    var body: some View {
        TabView(selection: $coordinator.selectedTab) {
            HomeContainer(coordinator: coordinator.homeCoordinator)
                .tag(AppTab.home)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            FeedContainer(coordinator: coordinator.feedCoordinator)
                .tag(AppTab.feed)
                .tabItem {
                    Label("Feed", systemImage: "newspaper")
                }
            DeviceContainerView(coordinator: coordinator.deviceCoordinator)
                .tag(AppTab.device)
                .tabItem {
                    Label("Device", systemImage: "wrench.adjustable")
                }
            SetingContainerView(coordinator: coordinator)
                .tag(AppTab.settings)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}


//
//  AppCoordinator.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI
import Observation

@Observable
final class AppCoordinator {

    // MARK: Root flow
    var flow: RootFlow = .auth
    
    var authCoordinator = AuthCoordinator()
    
    // MARK: selected tab
    var selectedTab: AppTab = .home
    
    // MARK: Navigation Path
    var homeCoordinator = HomeCoordinator()
    var feedCoordinator = FeedCoordinator()
    var settingCoordinator = SettingCoordinator()
    var deviceCoordinator = DeviceCoordinator()
    
    func loginSuccess() {
        authCoordinator = AuthCoordinator()
        flow = .main
    }
    
    func logout() {
        homeCoordinator = HomeCoordinator()
        feedCoordinator = FeedCoordinator()
        settingCoordinator = SettingCoordinator()
        deviceCoordinator = DeviceCoordinator()
        authCoordinator = AuthCoordinator()

        selectedTab = .home
        flow = .auth
    }
}

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
    var flow: RootFlow = .intro
    
    var authCoordinator = AuthCoordinator()
    
    // MARK: selected tab
    var selectedTab: AppTab = .home
    
    // MARK: Navigation Path
    var homeCoordinator = HomeCoordinator()
    var feedCoordinator = FeedCoordinator()
    var settingCoordinator = SettingCoordinator()
    var deviceCoordinator = DeviceCoordinator()
    
    init() {
        updatePath()
    }
    
    func introSeen() {
        flow = .auth
        UserDefaults.introHasBeenSeen = true
    }
    
    func loginSuccess() {
        authCoordinator = AuthCoordinator()
        flow = .main
        UserDefaults.isLoggedInUser = true
    }
    
    func logout() {
        homeCoordinator = HomeCoordinator()
        feedCoordinator = FeedCoordinator()
        settingCoordinator = SettingCoordinator()
        deviceCoordinator = DeviceCoordinator()
        authCoordinator = AuthCoordinator()

        selectedTab = .home
        flow = .auth
        
        UserDefaults.isLoggedInUser = false
    }
}

extension AppCoordinator {
    func updatePath() {
        if UserDefaults.isLoggedInUser {
           flow = .main
       } else if UserDefaults.introHasBeenSeen {
            flow = .auth
       }
    }
}

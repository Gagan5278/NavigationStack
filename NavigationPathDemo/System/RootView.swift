//
//  ContentView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct RootView: View {
    let coordinator: AppCoordinator
    
    var body: some View {
        switch coordinator.flow {
        case .auth:
            AuthContainerView(coordinator: coordinator)
        case .main:
            MainTabView(coordinator: coordinator)
        } 
    }
}

#Preview {
    RootView(coordinator: AppCoordinator())
}

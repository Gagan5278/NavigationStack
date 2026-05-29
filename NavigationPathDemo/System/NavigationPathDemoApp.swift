//
//  NavigationPathDemoApp.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

@main
struct NavigationPathDemoApp: App {
    
    @State var coordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            RootView(coordinator: coordinator)
        }
    }
}

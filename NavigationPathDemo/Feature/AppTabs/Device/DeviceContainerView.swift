//
//  DeviceContainerView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct DeviceContainerView: View {
    @Bindable var coordinator: DeviceCoordinator
    var body: some View {
        NavigationStack(path: $coordinator.devicePath) {
            DeviceView()
        }
    }
}

#Preview {
    DeviceContainerView(coordinator: DeviceCoordinator())
}

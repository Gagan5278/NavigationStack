//
//  HomeView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct HomeContainer: View {
    @Bindable var coordinator: HomeCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.homePath) {
            HomeView(coordinator: coordinator)
                .navigationDestination(for: HomeRoute.self) { route in
                    switch route {
                    case .detail( let id):
                        HomeDetailView(id: id)
                    case .profile:
                        HomeProfile(coordinator: coordinator)
                    case .homeDetail1:
                        HomeProfileDetailFirst(coordinator: coordinator)
                    case .homeDetail2:
                        HomeProfileDetailSecond()
                    }
                }
        }
        .fullScreenCover(item: $coordinator.fullSheet) { fullSheet in
            switch fullSheet {
            case .homeProfileLike:
                HomeFullScreenPresent(coordinator: coordinator)
            }
        }
        .sheet(item: $coordinator.sheet) { sheet in
            switch sheet {
            case .homeNews:
                EmptyView()
            case .homeFilters:
                HomeFilterSheet(coordinator: coordinator)
            }
        }
    }
}

#Preview {
    HomeContainer(coordinator: HomeCoordinator())
}

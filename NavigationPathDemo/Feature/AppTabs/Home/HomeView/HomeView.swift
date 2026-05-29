//
//  HomeView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct HomeView: View {
    @Bindable var coordinator: HomeCoordinator
    
    var body: some View {
        
        List {
            Button {
                coordinator.homePath.append(HomeRoute.detail(id: "123"))
            } label: {
                titleView("Home Detail")
            }
            
            Button {
                coordinator.homePath.append(HomeRoute.profile)
            } label: {
                titleView("Profile")
            }
            Button {
                coordinator.sheet = .homeFilters
            } label: {
                titleView("Filter Sheet")
            }
        }
        .listStyle(.insetGrouped)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .scrollContentBackground(.hidden)
        .background(Color.gray.opacity(0.2))
        .navigationTitle("Home Main View")
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
    HomeView(coordinator: HomeCoordinator())
}

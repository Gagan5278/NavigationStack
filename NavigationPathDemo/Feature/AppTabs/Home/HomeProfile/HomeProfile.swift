//
//  HomeProfile.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct HomeProfile: View {
    let coordinator: HomeCoordinator
    var body: some View {
        VStack {
            Text("Depth level 2")
                .font(.title)
                .padding(.bottom)
                Button {
                    coordinator.homePath.append(HomeRoute.homeDetail1(id: 1))
                } label: {
                    titleView("Home sub profile")
                }
                Button {
                    coordinator.fullSheet = .homeProfileLike
                } label: {
                    titleView("Full Sheet")
                }

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.purple.opacity(0.2))
        .navigationTitle("Home profile")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func titleView(_ title: String) -> some View {
        return HStack {
            Text(title)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(content: {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.white)
        })
        .foregroundStyle(.black)
    }
}

#Preview {
    HomeProfile(coordinator: HomeCoordinator())
}

//
//  HomeProfileDetail.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct HomeProfileDetailFirst: View {
    let coordinator: HomeCoordinator
    var body: some View {
        VStack {
            Text("Depth level 3")
                .font(.title)
                .padding(.bottom)
            Button {
                coordinator.homePath.append(HomeRoute.homeDetail2(id: 12))
            } label: {
                titleView("Home Sub profile 2")
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.green.opacity(0.2))
        .navigationTitle("Home Sub Profile")
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
    HomeProfileDetailFirst(coordinator: HomeCoordinator())
}

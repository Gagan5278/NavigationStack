//
//  HomeFilterSheet.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 29.05.26.
//

import SwiftUI

struct HomeFilterSheet: View {
    let coordinator: HomeCoordinator

    var body: some View {
        VStack {
            Text("Home Filter Sheet")
                .font(.title.bold())
                .padding()
            Button {
                coordinator.sheet = nil
            } label: {
                Text("Dismiss")
                    .foregroundStyle(.white)
                    .padding(.horizontal, 20)
            }
            .buttonStyle(.borderedProminent)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint.opacity(0.3))
    }
}

#Preview {
    HomeFilterSheet(coordinator: HomeCoordinator())
}

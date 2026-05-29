//
//  HomeFullScreenPresent.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 29.05.26.
//

import SwiftUI

struct HomeFullScreenPresent: View {
    let coordinator: HomeCoordinator

    var body: some View {
        VStack {
            Text("Home Full/Cover Sheet")
                .font(.title.bold())
                .padding()
            Button {
                coordinator.fullSheet = nil
            } label: {
                Text("Dismiss")
                    .foregroundStyle(.white)
                    .padding(.horizontal, 20)
            }
            .buttonStyle(.borderedProminent)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow.opacity(0.05))
    }
}

#Preview {
    HomeFullScreenPresent(coordinator: HomeCoordinator())
}

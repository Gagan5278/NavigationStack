//
//  FeedContainer.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct FeedContainer: View {
    @Bindable var coordinator: FeedCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.feedPath) {
            FeedView()
                .navigationDestination(for: FeedRoute.self) { route in
                    switch route {
                    case .article(let id):
                        FeedArticleDetail(id: id)
                    }
                }
        }
    }
}

#Preview {
    FeedContainer(coordinator: FeedCoordinator())
}

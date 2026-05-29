//
//  FeedView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            Text("Feed View")
                .font(.system(size: 32))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cyan.opacity(0.05))
        .navigationTitle("Feed")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FeedView()
}

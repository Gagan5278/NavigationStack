//
//  HomeProfileDetailSecond.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct HomeProfileDetailSecond: View {
    var body: some View {
        Text("Depth Level 4 \nHome Profile Detail fouth level")
            .font(.title2)
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Home Sub profile 2")
            .background(Color.brown.opacity(0.1))
    }
}

#Preview {
    HomeProfileDetailSecond()
}

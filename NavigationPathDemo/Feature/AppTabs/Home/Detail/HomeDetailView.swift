//
//  HomeDetailView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct HomeDetailView: View {
    let id: String
    
    var body: some View {
        Text("Home deatil view for id: \(id)")
            .font(.title.bold())
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.indigo.opacity(0.2))
            .navigationTitle("Home Detail View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeDetailView(id: "123")
}

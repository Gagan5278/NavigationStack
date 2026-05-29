//
//  DeviceView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct DeviceView: View {
    var body: some View {
        VStack {
            Text("Device list")
                .font(.system(size: 32))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.05))
        .navigationTitle("Devices")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DeviceView()
}

//
//  ForgotPasswordView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct ForgotPasswordView: View {
    let coordinator: AppCoordinator
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            Text("Recover your password")
                .font(.title2)
            TextField("Enter yout email", text: $email)
                .frame(height:55)
                .padding(.horizontal)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
            Button {
                coordinator.authCoordinator.sheet = nil
            } label: {
                Text("Submit")
                    .font(.title2)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 5)
            }
            .disabled(email.isEmpty)
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red.opacity(0.05))
    }
}

#Preview {
    ForgotPasswordView(coordinator: AppCoordinator())
}

//
//  AuthContainerView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct AuthContainerView: View {
    @Bindable var coordinator: AppCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.authCoordinator.authPath) {
            IntroductionView(coordinator:coordinator)
                .navigationDestination(for: AuthRoute.self) { route in
                    switch route {
                    case .login:
                        LoginView(coordinator: coordinator)
                    case .forgotPassword:
                        ForgotPasswordView(coordinator: coordinator)
                    case .register:
                        RegisterView(coordinator: coordinator)
                    }
                }
        }
        .sheet(item: $coordinator.authCoordinator.sheet) { sheet in
            switch sheet {
            case .forgotPassword:
                ForgotPasswordView(coordinator: coordinator)
            }
        }
    }
}

#Preview {
    AuthContainerView(coordinator: AppCoordinator())
}

//
//  IntroductionView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct IntroductionView: View {
    let coordinator: AppCoordinator
    
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "sparkle.text.clipboard")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100)
                Text("Introdcution View")
                    .font(.title2.bold())
                Text(" Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(.subheadline)
            }
            Spacer(minLength: 40)
            VStack(spacing: 16) {
                Button {
                    coordinator
                        .authCoordinator
                        .authPath
                        .append(AuthRoute.login)
                } label: {
                    Text("Login")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .background(.green)
                        .cornerRadius(10)
                }
                Button {
                    coordinator
                        .authCoordinator
                        .authPath
                        .append(AuthRoute.register)
                } label: {
                    Text("Register")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .background(.blue)
                        .cornerRadius(10)
                }
                Button {
                    coordinator
                        .authCoordinator
                        .sheet = .forgotPassword
                        
                } label: {
                    Text("Forget password")
                        .font(.title3)
                        .foregroundStyle(.red)
                        .underline()
                }
            }
        }
        .padding()
    }
}

#Preview {
    IntroductionView(coordinator: AppCoordinator())
}

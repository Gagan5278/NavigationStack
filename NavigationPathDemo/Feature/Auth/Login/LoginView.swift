//
//  LoginView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct LoginView: View {
    let coordinator: AppCoordinator
    @State var userName: String = ""
    @State var password: String = ""
    var body: some View {
        VStack(spacing: 15) {
            Group {
                TextField("Enter your user name or email", text: $userName)
                TextField("Enter your password", text: $password)
            }
            .padding(.horizontal)
            .frame(height: 60)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
              
            Button {
                coordinator.loginSuccess()
            } label: {
                Text("Login")
                    .font(.title2)
                    .foregroundStyle(.white)
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(userName.isEmpty ? .gray.opacity(0.5) : .green)
                    .cornerRadius(10)
            }
            .disabled(userName.isEmpty)
            .padding(.top)
            Text("Enter your credentil to continue. Maximun number of trial is 3")
                .font(.callout)
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
        .padding(.horizontal)
        .navigationTitle("Welcome back")
    }
}

#Preview {
    LoginView(coordinator: AppCoordinator())
}

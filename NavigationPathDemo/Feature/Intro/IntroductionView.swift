//
//  IntroductionView.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct IntroductionView: View {
    let coordinator: AppCoordinator
    @State var currentPage: Int = 0
    @State var shouldShowAuth: Bool = false
    private let carouselItems = CarouselItem.items
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(Array(carouselItems.enumerated()), id: \.element.id) { index, item in
                    VStack {
                        Image(systemName: item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        Text(item.title)
                            .font(.title2)
                        Text(" Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                            .font(.subheadline)
                    }
                    .padding()
                    .tag(index)                }
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .frame(height: 350)
            if shouldShowAuth {
                VStack(spacing: 16) {
                    Button {
                        updateInroState()
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
                        updateInroState()
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
                        updateInroState()
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
                .padding()
            }
        }
        .onChange(of: currentPage) {  _, newValue in
            withAnimation(.linear(duration: 0.5)) {
                shouldShowAuth = newValue == carouselItems.count - 1
            }
        }
    }
    
    private func updateInroState() {
        coordinator.introSeen()
    }
}

#Preview {
    IntroductionView(coordinator: AppCoordinator())
}

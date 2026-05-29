//
//  RegisterViewController.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct RegisterView: View {
    let coordinator: AppCoordinator
    @State var placeHolderString = ""
    var body: some View {
        VStack {
            Form {
                TextField("First Name", text: $placeHolderString)
                TextField("last Name", text: $placeHolderString)
                TextField("Date of birth", text: $placeHolderString)
                TextField("Email", text: $placeHolderString)
                TextField("Password", text: $placeHolderString)
                TextField("Password", text: $placeHolderString)
            }
            Button {
                
            } label: {
                Text("Register")
                    .font(.title2)
                    .padding(.vertical,5)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Weclome!")
    }
}

#Preview {
    RegisterView(coordinator: AppCoordinator())
}

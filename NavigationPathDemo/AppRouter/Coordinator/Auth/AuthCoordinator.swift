//
//  AuthCoordinator.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 29.05.26.
//

import SwiftUI

@Observable
final class AuthCoordinator  {
    var authPath = NavigationPath()
    var sheet: AuthSheet?
}

//
//  HomeCoordinator.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

@Observable
final class HomeCoordinator {
    var homePath = NavigationPath()
    var sheet: HomeSheet?
    var fullSheet: HomeFullScreenRoute?
}

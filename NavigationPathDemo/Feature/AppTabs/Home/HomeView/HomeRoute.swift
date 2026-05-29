//
//  HomeRoute.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import Foundation

enum HomeRoute: Hashable {
    case detail(id: String)
    case profile
    case homeDetail1(id: Int)
    case homeDetail2(id: Int)
}

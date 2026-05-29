//
//  HomeSheet.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import Foundation

enum HomeSheet: String, Identifiable {
    case homeNews
    case homeFilters
    
    var id: String {
        rawValue
    }
}

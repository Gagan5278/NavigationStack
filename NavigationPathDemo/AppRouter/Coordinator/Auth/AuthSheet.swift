//
//  AuthSheet.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 29.05.26.
//

import Foundation

enum AuthSheet: String, Identifiable {
    case forgotPassword
    
    var id: String {
        rawValue
    }
}

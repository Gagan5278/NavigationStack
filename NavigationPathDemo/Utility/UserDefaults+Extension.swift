//
//  UserDefaults+Extension.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 04.06.26.
//

import Foundation

extension UserDefaults {
    
    private enum Keys {
        static var introUserDefaulKey = "introHasBeenSeen"
        static var isLoggedInUserDefaultKey = "isLoggedInUser"
    }
    
    class var introHasBeenSeen: Bool {
        get {
            standard.bool(forKey: Keys.introUserDefaulKey)
        } set {
            standard.set(newValue, forKey: Keys.introUserDefaulKey)
        }
    }
    
    class var isLoggedInUser: Bool {
        get {
            standard.bool(forKey: Keys.isLoggedInUserDefaultKey)
        } set {
            standard.set(newValue, forKey: Keys.isLoggedInUserDefaultKey)
        }
    }
}

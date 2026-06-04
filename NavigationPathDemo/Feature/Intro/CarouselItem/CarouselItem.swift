//
//  CarouselItem.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 02.06.26.
//

import SwiftUI

struct CarouselItem: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let title: String
}


extension CarouselItem {
    static let items = [
        CarouselItem(imageName: "desktopcomputer.and.macbook", title: "Desktop"),
        CarouselItem(imageName: "book.and.wrench.fill", title: "Book"),
        CarouselItem(imageName: "long.text.page.and.pencil", title: "Pencil"),
        CarouselItem(imageName: "person.spatialaudio.3d.fill", title: "Person"),
        CarouselItem(imageName: "figure.badminton", title: "Figure"),
    ]
}

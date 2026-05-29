//
//  FeedArticleDetail.swift
//  NavigationPathDemo
//
//  Created by Gagan Vishal Mishra on 28.05.26.
//

import SwiftUI

struct FeedArticleDetail: View {
    let id: String
    var body: some View {
        Text("Feed Articale Detail \(id)")
    }
}

#Preview {
    FeedArticleDetail(id: "123")
}

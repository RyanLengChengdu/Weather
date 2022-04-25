//
//  PageView.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/22.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 2
    var body: some View {
        ZStack() {
            PageViewController(pages: pages,currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .background(.white)
                .padding(.trailing)
                .offset( y: 50)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: [FeatureCard(pageNow: 0),FeatureCard(pageNow: 1),FeatureCard(pageNow: 2)])
    }
}

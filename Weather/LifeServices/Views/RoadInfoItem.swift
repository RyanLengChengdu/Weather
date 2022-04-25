//
//  RoadInfo.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct RoadInfoItem: View {
    var arr:Array<String>
    var body: some View {
        VStack {
            Image(arr[0])
                //.font(.largeTitle)
            Text(arr[1])
                .bold()
                .font(.title)
            Text(arr[2])
                .font(.subheadline)
                .foregroundColor(Color.gray)
        }
    }
}

struct RoadInfoItem_Previews: PreviewProvider {
    static var previews: some View {
        RoadInfoItem(arr: ["icon-1","中等","防晒SPF"])
    }
}

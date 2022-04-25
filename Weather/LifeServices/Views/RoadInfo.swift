//
//  RoadInfo.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct RoadInfo: View {
    @State var RoadInfoArray = [["icon-1","中等","防晒SPF"],["icon-2","良好","交通情况"],["icon-3","干燥","路况状态"],["icon-4","5 0","尾号限行"]]
    var body: some View {
        HStack(spacing:19){
            
            ForEach(RoadInfoArray,id: \.self){ arr in
                RoadInfoItem(arr: arr)
            }
        }.padding()
    }
}

struct RoadInfo_Previews: PreviewProvider {
    static var previews: some View {
        RoadInfo()
    }
}

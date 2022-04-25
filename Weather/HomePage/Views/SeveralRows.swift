//
//  SeveralRows.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/25.
//

import SwiftUI

struct SeveralRows: View {
    var body: some View {
        Group{
            HStack{
                Spacer()
                Image(systemName: "location.north.circle")
                    .font(.largeTitle)
                VStack(alignment:.trailing){
                    Text("南")
                    Text("1.7米/秒")
                }
            }
            
            HStack{
                Text("18")
                    .font(.system(size: 50))
                VStack{
                    HStack{
                        Text("九月 | 星期五")
                        Spacer()
                        Text("露点:13°")
                    }
                    HStack{
                        Text("15:00")
                        Spacer()
                        Text("气压:765hpa")
                    }
                }
            }
            // Divider()
            HStack{
                Text("紫外线：弱")
                Spacer()
                Text("最高气温:29℃")
            }
            Divider()
            HStack{
                Text("云量：1级")
                Spacer()
                Text("最低气温:21℃")
            }
            Divider()
            HStack{
                Text("能见度：21.87km")
                Spacer()
                Text("24H降水量:0mm")
            }
        }
    }
}

struct SeveralRows_Previews: PreviewProvider {
    static var previews: some View {
        SeveralRows()
    }
}

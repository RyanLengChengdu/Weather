//
//  TravelInfo.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/26.
//

import SwiftUI

struct TravelInfo: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("panda")
                VStack {
                    Text("距离成都市区最近的大熊猫基地，可与熊猫亲密接触，亲眼感受萌萌可爱的国宝")
                        .foregroundColor(.white)
                        .padding()
                    VStack(alignment:.leading,spacing: 20){
                        Text("旅游指数")
                            .foregroundColor(.secondary)
                        Text("非常合适")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(.orange)
                        Text("日间温度适宜，但要注意早晚温差。建议搭配易穿脱的外套， 简洁实用。体弱者宜着厚外套、厚毛衣。")
                    }.padding()
                        .background(.white)
                        .cornerRadius(12)
                }.padding()
                    .offset(y:-140)
                    .padding(.bottom,-140)
                VStack(alignment:.leading){
                    HStack {
                        Text("为你推荐")
                            .bold()
                            .font(.title)
                        Spacer()
                    }
                    InfoRow()
                    InfoRow()
                    InfoRow()
                    
                }.padding(.horizontal)
                Spacer()
            }.background(Color("BackgroundColor"))
        }
      
    }
}

struct TravelInfo_Previews: PreviewProvider {
    static var previews: some View {
        TravelInfo()
    }
}



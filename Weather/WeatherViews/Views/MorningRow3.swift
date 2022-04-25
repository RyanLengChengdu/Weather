//
//  MorningRow3.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/21.
//

import SwiftUI

struct MorningRow3: View {
    var arr = [["ic-wx","朝霞晚霞预报","霞是由于日出和日落前后，阳光通过厚厚的大气层， 被大量的空气分子散射的结果。"],
    ["ic-pl","平流雾预报","它主要是暖湿空气流经寒冷地表或海面时暖湿空气遇冷凝结而成。"],
    ["ic-ws","雾凇预报","雾凇非冰非雪，而是由于雾中无数零摄氏度以下而尚未凝华的水蒸..."],
        ["ic-ch","彩虹预报","是气象中的一种光学现象，当太阳光照射到半空中的 水滴，光线被..."]]
    var body: some View {
        VStack{
            ForEach(arr,id: \.self){item in
                HStack{
                    Image(item[0])
                    VStack(alignment:.leading){
                        Text(item[1])
                            .font(.body)
                            .bold()
                        Text(item[2])
                            .foregroundColor(.secondary)
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
            }
        }
        
    }
}

struct MorningRow3_Previews: PreviewProvider {
    static var previews: some View {
        MorningRow3()
    }
}

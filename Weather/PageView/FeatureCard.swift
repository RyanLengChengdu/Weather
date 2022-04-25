//
//  FeatureCard.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/22.
//

import SwiftUI

struct FeatureCard: View {
     let arr = [["预计未来40天天气情况","13天升温，26天晴朗","fgsergtes-img"],["未来一天无雨，风力较小","较适宜洗车，擦洗一新的汽车至少能保持一天。","fgsergtes-img"],["一站搞定 出门不操心","明天下雨，今天就知","fgsergtes-img"]]
    var pageNow:Int
    var body: some View {
        HStack {
            VStack(alignment:.leading) {
                Text(self.arr[pageNow][0])
                    .bold()
                    .font(.system(size: 20))
                Text(arr[pageNow][1])
                    .foregroundColor(.blue)
            }
            Spacer()
            Image(arr[pageNow][2])
                .cornerRadius(10)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .padding()
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(pageNow: 1)
    }
}

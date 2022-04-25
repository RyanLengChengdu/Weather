//
//  TwentyFourHourCard.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/22.
//

import SwiftUI

struct TwentyFourHourCard: View {
    var body: some View {
        VStack{
            HStack{
                
                Text(" 24小时天气")
                    .font(.title3)
                    .bold()
                Spacer()
                Text("现在多云，2小时左右转为晴 > ")
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }.padding(.top)
            TwentyFourHourWeather()
                .background(Color(red: 0.928, green: 0.973, blue: 1.0))
                .cornerRadius(10)
                .padding()
        }
        .background(.white)
        .cornerRadius(10)
        .padding()
    }
}

struct TwentyFourHourCard_Previews: PreviewProvider {
    static var previews: some View {
        TwentyFourHourCard()
    }
}

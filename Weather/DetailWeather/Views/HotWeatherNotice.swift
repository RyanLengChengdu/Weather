//
//  HotWeatherNotice.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/24.
//

import SwiftUI

struct HotWeatherNotice: View {
    var body: some View {
        HStack{
            VStack(alignment:.leading){
                Text("天热注意防暑")
                    .font(.title)
                    .bold()
                Text("天气炎热，请注意防晒，多喝水...")
                    .foregroundColor(.secondary)
               
                NavigationLink {
                    AirQuality()
                } label: {
                    Text("24小时预报 > ")
                        .foregroundColor(.white)
                        .padding(5)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.208, green: 0.819, blue: 0.723)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(30)
                }
            }.padding(.horizontal)
            ZStack {
                Image("airvalue-img")
                VStack{
                    Text(" 59")
                        .font(.largeTitle)
                        .bold()
                    Text("  空气良")
                }.foregroundColor(.white)
            }
        }.padding()
            .background(.white)
    }
}

struct HotWeatherNotice_Previews: PreviewProvider {
    static var previews: some View {
        HotWeatherNotice()
    }
}

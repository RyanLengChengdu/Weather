//
//  FiveDays.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/24.
//

import SwiftUI

struct FiveDays: View {
    var body: some View {
        VStack {
            HStack {
                Text("5天空气质量")
                    .font(.title3)
                    .bold()
                Spacer()
                NavigationLink {
                    DetailWeather()
                } label: {
                    Text("未来15天 >")
                        .foregroundColor(.secondary)
                }
            }
            HStack(spacing:10){
                ForEach(0..<5){i in
                    VStack(spacing:10){
                        Text("今天")
                        Text("10/29")
                        Text("优")
                            .foregroundColor(.white)
                            .padding()
                        //.padding(.horizontal,10)
                            .background(.green)
                            .cornerRadius(20)
                    }
                }
            }
            .padding()
            .background(Image("sdfhhiwsseiwe-img").resizable())
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.931, green: 0.987, blue: 0.969)/*@END_MENU_TOKEN@*/)
        }.padding()
            .background(.white)
            .cornerRadius(15)
            .padding()
    }
}

struct FiveDays_Previews: PreviewProvider {
    static var previews: some View {
        FiveDays()
    }
}

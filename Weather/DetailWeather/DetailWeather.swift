//
//  ContentView.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct DetailWeather: View {
    @State var selectedIndex = 0
    var weathers = [["00:00","duoyun","16℃"],["01:00","duoyun","16℃"],["02:00","xiaoyu","18℃"],["03:00","tedabaoyu","19℃"],["04:00","tedabaoyu","21℃"],["05:00","tedabaoyu","21℃"],["06:00","tedabaoyu","23℃"],["07:00","tedabaoyu","23℃"],["08:00","duoyun","23℃"],["09:00","duoyun","24℃"],["10:00","duoyun","27℃"],["11:00","duoyun","27℃"],["12:00","duoyun","28℃"],["13:00","duoyun","30℃"],["14:00","duoyun","32℃"],["15:00","duoyun","32℃"],["16:00","duoyun","30℃"],["17:00","duoyun","30℃"],["18:00","yintian","27℃"],["19:00","yintian","26℃"],["20:00","yintian","24℃"],["21:00","yintian","23℃"],["22:00","yintian","20℃"],["23:00","yintian","18℃"]]
    var body: some View {
        
        ScrollView{
            //顶部选择栏
            TimeSelector(selectedIndex: $selectedIndex)
            //温度和六个gridItem
            TempratureAnd6Item(selectedIndex: $selectedIndex)
            HotWeatherNotice()
            
            
            VStack{
                HStack{
                    Text("24小时天气")
                        .font(.body)
                        .bold()
                    Spacer()
                    Image("ic-sunrise")
                    Text("日出07:19")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Divider()
                    Image("ic-sunset")
                    Text("日落19:08")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }.padding()
                Divider()
                VStack(alignment: HorizontalAlignment.leading, spacing: 20){
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment:.center, spacing: 20){
                            ForEach(0..<24) { i in
                                VStack{
                                        Text(weathers[i][0])
                                    Image(weathers[i][1])
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50)
                                        .shadow(color: .white, radius: 3,  y: 3)
                                        Text(weathers[i][2])
                                }
                            }
                        }
                    }
                    .padding()
                }
                
            }.background(.white)
            VStack{
                FiftyDays()
            }.background(.white)
            
            
            
            
            
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.938, green: 0.945, blue: 0.961)/*@END_MENU_TOKEN@*/)
        .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("成都市天气详情")
        .toolbar {
            Button {
                
            } label: {
                Image("ic-id")
            }
        }
    }
}

struct DetailWeather_Previews: PreviewProvider {
    static var previews: some View {
        DetailWeather()
    }
}




//
//  ContentView.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct DetailWeather: View {
    @State var selectedIndex = 0
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
                                        Text("现在")
                                    Image("ic-wx")
                                        Text("20度")
                                }
                            }
                        }
                    }
                    .padding()
                }
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




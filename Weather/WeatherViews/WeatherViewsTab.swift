//
//  WeatherViewsTab.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct WeatherViewsTab: View {
    @EnvironmentObject var locationManager:LocationManager
    @State var selection:Int = 0
    let pickerOptions = ["今天","明天","后天"]
    var body: some View {
        ScrollView{
            VStack{
                CityRow(locationManager: self.locationManager)
                    .padding(.horizontal)
                HStack {
                    Text(locationManager.street)
                        .foregroundColor(.secondary)
                    Spacer()
                }.padding(.leading)
                HStack{
                    Text("03/16 17:00 北风 3~4级")
                    Spacer()
                }.padding(.horizontal)
                
                //云海预报行
                CloudSeaRow()
                //预告行
                HStack{
                    Image("font-notice")
                    Text("约50分钟后雨会变大，直到1个半小时后雨会变小.")
                        .font(.system(size: 13))
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .padding(.top)
                .padding(.horizontal)
                
                VStack{
                    HStack{
                        Picker("picker", selection: $selection) {
                            ForEach(0..<3){index in
                                Text(pickerOptions[index]).tag(index)
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                        
                        Text("                       更多 > ")
                            .foregroundColor(.secondary)

                    }
                    TwentyFourHourWeather()
                    
                }.foregroundColor(.white)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                
                
                
                
                //景观预报x4
                MorningRow3()
                    .padding(.horizontal)
                
                Spacer()
            }
            //.padding()
            
        }.background(Color(red: 0.938, green: 0.945, blue: 0.961))
        
    }
}

struct WeatherViewsTab_Previews: PreviewProvider {
    static var previews: some View {
        WeatherViewsTab()
            .environmentObject(LocationManager())
    }
}



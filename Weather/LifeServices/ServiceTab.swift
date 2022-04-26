//
//  Service_Tab.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct ServiceTab: View {
    @EnvironmentObject var locationManager:LocationManager
    var body: some View {
        NavigationView {
            ScrollView{
                CityNameRow(locationManager:self.locationManager)
                
                //时间row
                HStack {
                    Circle()
                        .frame(width:8)
                        .foregroundColor(.green)
                    Text(Date(),style: .date)
                    Spacer()
                }.padding(.horizontal)
                
                RoadInfo()
                
                //FourtyDaysRow()
                PageView(pages: [FeatureCard(pageNow: 0),FeatureCard(pageNow: 1),FeatureCard(pageNow: 2)])
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                    .cornerRadius(30)
                
                FiveDays()
                    
                
                FitRow()
                
                ClothesAndLunarRow()
                
                TwentyFourHourCard().frame(height:300)
                
                FiveDaysWind()
                
                LifeAssistant()
                
            }.background(Color(red: 0.938, green: 0.945, blue: 0.961))
                .navigationBarHidden(true)
        }
    }
}

struct ServiceTab_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ServiceTab()
                .environmentObject(LocationManager())
        }
    }
}









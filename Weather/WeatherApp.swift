//
//  WeatherApp.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

@main
struct WeatherApp: App {
    @State var selected = 0
    @StateObject var locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selected) {
                Home()
                    .tabItem {
                        Text("天气预报")
                        Image(selected == 0 ? "tab-icon-wtforecast-blue-nor" : "tab-icon-wtforecast-nor-1")
                    }
                    .tag(0)
                 ServiceTab()
                    .tabItem {
                        Text("生活服务")
                        Image(selected == 1 ? "tab-icon-lifeserve-s" : "tab-icon-lifeserve-nor-1")
                    }
                    .tag(1)
                 WeatherViewsTab()
                    .tabItem {
                        Text("气象景观")
                        Image(selected == 2 ? "tab-icon-metellandscape-s" : "tab-icon-metellandscape-nor")
                    }
                    .tag(2)
            }
            .environmentObject(locationManager)
           
        }
    }
}

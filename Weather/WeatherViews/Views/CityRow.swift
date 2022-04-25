//
//  CityRow.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct CityRow: View {
    var colors = Gradient(colors: [.white,.blue])
    var locationManager:LocationManager
    var body: some View {
        HStack {
            Text(locationManager.CityName)
                .font(.largeTitle)
                .bold()
            ZStack{
                Capsule()
                    .frame(width:100, height:30)
                    .foregroundColor(Color(red: 0.887, green: 0.894, blue: 0.906))
                //Label("优24", systemImage: "leaf.fill")
                HStack{
                    Image("ic-leaf")
                    Text("优 24")
                        .foregroundColor(.green)
                }
            }
            Spacer()
            Image("ic-id")
        }
        
    }
}

struct CityRow_Previews: PreviewProvider {
    static var previews: some View {
        CityRow(locationManager: LocationManager())
    }
}

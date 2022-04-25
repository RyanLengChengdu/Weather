//
//  CityNameRow.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct CityNameRow: View {
    var colors = Gradient(colors: [.white,.blue])
    var locationManager:LocationManager
    var body: some View {
        HStack {
            
            Button {
                locationManager.refreshLocation()
            } label: {
                Text(locationManager.CityName)
                    .font(.system(size: 32))
                    .bold()
                    .scaledToFill()
            }

            
            
            Spacer()
            ZStack{
                Capsule()
                    .fill(LinearGradient(gradient: colors, startPoint: .leading, endPoint: .trailing))
                HStack{
                    Image("ic-leaf")
                    Text("优 24")
                        .foregroundColor(.white)
                        .font(.subheadline)
                }
            }
          

            Image("ic-id")
            
            Image("ic-sunrise")
            VStack {
                Text("日出")
                Text("07:19")
            }.font(.system(size: 10))
            Divider()
            Image("ic-sunset")
            VStack {
                Text("日落")
                Text("19:08")
            }.font(.system(size: 10))
        }
        .padding()
    }
}

struct CityNameRow_Previews: PreviewProvider {
    static var previews: some View {
        CityNameRow(locationManager: LocationManager())
    }
}

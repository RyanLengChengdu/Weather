//
//  FiftyDays.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/26.
//

import SwiftUI

struct FiftyDays: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("未来15天预报")
                .bold()
            Divider()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center){
                ForEach(0..<15){i in
                    VStack(alignment:.center,spacing: 20){
                        Text("今天")
                        Text("04/26")
                            .scaledToFill()
                        Text("大雨")
                        Image("duoyun")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90)
                        Text("20°C")
                            .scaledToFill()
                    }
                    Divider()
                }
                }
                LineChartDemoView()
                    .offset(x:45,y:-20)
                    .frame(height: 50)
                    
                
            }
        }.padding()
    }
}

struct FiftyDays_Previews: PreviewProvider {
    static var previews: some View {
        FiftyDays()
    }
}

//
//  AirQuality.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/24.
//

import SwiftUI

struct AirQuality: View {
    var colors = Gradient(colors:[Color("TopColor"), Color("BottomColor")])
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing:30){
                Circle()
                    .strokeBorder(.white )
                    .frame(width: 200, height: 200, alignment: .center)
                
                    .shadow(color: .white, radius: 1, x: 0, y: 0)
                    .shadow(color: .white, radius: 2, x: -5, y: -10)
                    .shadow(color: .white, radius: 3, x: 5, y: 10)
                    .overlay {
                        VStack(spacing:10) {
                            Text("115")
                                .font(.largeTitle)
                                .bold()
                            Text("空气良")
                            Text("17:00发布")
                                .foregroundColor(.secondary)
                        }.foregroundColor(.white)
                    }
                Text("基本无空气污染，令人刚到舒适， 各类人群可正常活动。")
                    .multilineTextAlignment(.center)
                    .frame(width: 230,alignment: .center)
                    .foregroundColor(.white)
            }
            
            .frame(minWidth: 300, idealWidth: 450, maxWidth: 450, minHeight: 400, idealHeight: 500, maxHeight: 500, alignment: .center)
            .background(LinearGradient(gradient: colors, startPoint: .top, endPoint: .bottom))
            .overlay(alignment: .bottomTrailing, content: {
                VStack{
                    Image("ic-ip")
                    Label("温馨提示", image: "ic-notice")
                        .padding()
                        .background(.white)
                        .cornerRadius(30)
                }
            })
        }.ignoresSafeArea()
            .navigationTitle("成都市-武侯区空气质量")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct AirQuality_Previews: PreviewProvider {
    static var previews: some View {
        AirQuality()
    }
}

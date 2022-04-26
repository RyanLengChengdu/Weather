//
//  AirQuality.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/24.
//

import SwiftUI

struct AirQuality: View {
    var colors = Gradient(colors:[Color("TopColor"), Color("BottomColor")])
    let rule = [GridItem(.flexible(minimum: 80, maximum: 200), alignment: .center),GridItem(.flexible(minimum: 80, maximum: 200), alignment: .center),GridItem(.flexible(minimum: 80, maximum: 200), alignment: .center)]
    let details = [["细颗粒物","12"],["粗颗粒物","2"],["二氧化硫","20"],["二氧化氮","25"],["一氧化碳","2"],["臭氧","76"]]
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
                        .offset(y:10)
                    Label("温馨提示", image: "ic-notice")
                        .padding()
                        .background(.white)
                        .cornerRadius(30)
                        .padding(.bottom,40)
                }
            })
            
            LazyVGrid(columns: rule,spacing: 20) {
                ForEach(0..<6){i in
                    VStack(spacing:10){
                        Text(details[i][0])
                        Text(details[i][1])
                            .foregroundColor(.blue)
                            .bold()
                    }
                }
            }
            .padding()
            .background(.white)
            .cornerRadius(20, corners: [.topLeft, .topRight])
            .offset(y: -25)
            .padding(.bottom,-25)
            
            HStack{
                Image("ic-medal")
                Text("全国排名:898")+Text("/988").foregroundColor(.secondary)
                Spacer()
                Text("打败70% > ")
            }
            .padding()
            .background(Color.white)
            
            AQIChart().frame(height:250)
                .padding(.vertical)
                .background(.white)
            FiveDays()
                .padding(-10)
                .padding(.bottom,80)
            
            
            
            
        }.ignoresSafeArea()
            .background(Color("BackgroundColor"))
            .navigationTitle("成都市-武侯区空气质量")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct AirQuality_Previews: PreviewProvider {
    static var previews: some View {
        AirQuality()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

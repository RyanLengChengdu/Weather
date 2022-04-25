//
//  ClothesAndLunarRow.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct ClothesAndLunarRow: View {
    var body: some View {
        HStack{
            ZStack(alignment:.bottom){
                Image("dsfafjaweesd-img")
                    .resizable()
                    .scaledToFit()
                    //.padding(.top)

                VStack{
                    HStack{
                        Circle()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 34, height: 34)
                            .overlay {
                                Image("ic-clothes")
                            }
                        Text("穿衣指南")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                    Text("今天的温度适合穿什么？关注穿衣与温度对照表吧")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .padding()
                .background(GlassEffect())
                .cornerRadius(10)
                .padding()
                
            }
            
            VStack(alignment:.leading){
                Text("黄历吉时")
                Text("二月十二 | 壬寅年 虎")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                HStack{
                    Image("ic-rili")
                    Spacer()
                    VStack(alignment:.leading){
                        Label("国际警察节日", systemImage: "circle.fill")
                            .foregroundColor(.orange)
                            .font(.system(size: 12))
                        Label("白色情人节", systemImage: "circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 12))
                    }
                }
                HStack{
                    Image("ic-luckyday")
                    Spacer()
                    Text("订盟、纳采、冠笄、拆卸、修造、动土、安床...")
                        .font(.system(size: 13))
                }
                HStack{
                    Image("ic-deathday")
                    Spacer()
                    Text("作灶、开光、嫁娶、开市、入宅")
                        .font(.system(size: 13))
                }
                Text("")
            }
            .padding(.horizontal)
            .background(.white)
            .cornerRadius(10)
            .padding(.bottom)
            
        }
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct ClothesAndLunarRow_Previews: PreviewProvider {
    static var previews: some View {
        ClothesAndLunarRow()
    }
}


struct GlassEffect: UIViewRepresentable{
    var style: UIBlurEffect.Style = .regular
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

extension View{
    func glassEffect() -> some View{
        self.background(GlassEffect())
    }
}

//
//  TempratureAnd6Item.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/24.
//

import SwiftUI

struct TempratureAnd6Item: View {
    @Binding var selectedIndex:Int
    var arr2 = [["20~28°C","阴 | 17:00发布","12","87%","1024hpa","1级","弱","2.4公里"],["20~22C","晴 | 17:00发布","14","81%","1044hpa","3级","强","1.2公里"]]
    let rule = [GridItem(.flexible(minimum: 80, maximum: 200)),GridItem(.flexible(minimum: 80, maximum: 200)),GridItem(.flexible(minimum: 80, maximum: 200))]
    var Words = ["体感","温度","气压","东北风","紫外线","能见度"]
    var body: some View {
        VStack{
            HStack {
                VStack(alignment:.leading,spacing:10){
                    Text(arr2[selectedIndex][0])
                        .bold()
                        .font(.largeTitle)
                    Text(arr2[selectedIndex][1])
                }
                Spacer()
                Image("duoyun")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                    .shadow(color: .white, radius: 3,  y: 3)
            }.padding(.horizontal)
                .padding(.top)
            LazyVGrid(columns: rule) {
                ForEach(2..<8){i in
                    VStack {
                        Text(Words[i-2])
                            .foregroundColor(Color(red: 0.383, green: 0.408, blue: 0.443, opacity: 1.0))
                        Text(arr2[selectedIndex][i])
                        Divider()
                    }
                }
            }
            .padding()
            .background(Color(red: 0.955, green: 0.977, blue: 1.0))
            .cornerRadius(10)
            .padding()
        }.background(.white)
            .cornerRadius(10)
    }
}

struct TempratureAnd6Item_Previews: PreviewProvider {
    static var previews: some View {
        TempratureAnd6Item(selectedIndex: .constant(0))
    }
}

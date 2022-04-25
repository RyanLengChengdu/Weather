//
//  FiveDaysWind.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/24.
//

import SwiftUI

struct FiveDaysWind: View {
    var body: some View {
        VStack{
            HStack{
                
                Text(" 风向指标")
                    .font(.title3)
                    .bold()
                Spacer()
                Text("未来五天 > ")
                    .foregroundColor(.secondary)
                    .font(.body)
            }.padding(.top)
            HStack{
                VStack(alignment:.leading){
                    Text("03/16 17:00 北风 3~4级")
                    Text("“雷伊”今晨08时在南海北部进一步减弱为热带低压")
                        .foregroundColor(.secondary)
                }
                ZStack{
                    Image("dsfawjfeaj-img")
                    VStack{
                        Image("ic-arrow")
                        Text("北风")
                            .foregroundColor(.secondary)
                            .font(.body)
                        Text("3-4级")
                            .bold()
                    }
                }
            }
            
            .background(Color(red: 0.937, green: 0.937, blue: 0.937))
            
            .cornerRadius(10)
            .padding()
        }
        .background(.white)
        .cornerRadius(10)
        .padding()
    }
}

struct FiveDaysWind_Previews: PreviewProvider {
    static var previews: some View {
        FiveDaysWind()
    }
}

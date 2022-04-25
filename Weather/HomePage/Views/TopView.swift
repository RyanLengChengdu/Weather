//
//  TopView.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/25.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack {
            VStack(alignment:.leading,spacing: 20){
                Text("20°")
                    .font(.system(size: 80))
                    .bold()
                Text("局部多云|体感温度20°")
                ZStack{
                    Capsule()
                        .frame(width:100, height:30)
                        .foregroundColor(.black.opacity(0.35))
                    HStack{
                        Image("ic-leaf")
                        Text("优 24")
                            .foregroundColor(.white)
                    }
                }
            }
            Spacer()
        }.padding(.top,100)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

//
//  FourtyDaysRow.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct FourtyDaysRow: View {
    var body: some View {
        HStack {
            VStack(alignment:.leading) {
                Text("预计未来40天天气情况")
                    .bold()
                    .font(.system(size: 20))
                Text("13天升温，26天晴朗")
                    .foregroundColor(.blue)
                
            }
            Spacer()
            Image("fgsergtes-img")
                //.resizable()
                .cornerRadius(10)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .padding()
    }
}

struct FourtyDaysRow_Previews: PreviewProvider {
    static var previews: some View {
        FourtyDaysRow()
    }
}

//
//  CloudSeaRow.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/21.
//

import SwiftUI

struct CloudSeaRow: View {
    var LogoArr = [["icon-7","云海预报"],["icon-6","雾凇预报"],["icon-5","彩虹预报"]]
    var body: some View {
        HStack(alignment: .bottom,spacing: 50){
            ForEach(LogoArr,id: \.self){item in
                VStack{
                    Image(item[0])
                    Text(item[1])
                }
            }
        }.padding()
            .background(.white)
            .cornerRadius(10)
    }
}

struct CloudSeaRow_Previews: PreviewProvider {
    static var previews: some View {
        CloudSeaRow()
    }
}

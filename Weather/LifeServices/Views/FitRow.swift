//
//  FitRow.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct FitRow: View {
    var body: some View {
        HStack{
            ZStack(alignment:.leading){
                Image("-e-kpoqpoikpo-img")
                    .resizable()
                VStack(alignment:.leading) {
                    Text("    合适")
                        .font(.subheadline)
                        .bold()
                    Text("     今日早起晨练")
                        .font(.system(size: 10))
                        .foregroundColor(.secondary)
                }
            }
            ZStack(alignment:.leading){
                Image("-e-kpwoqpoikpo-img")
                    .resizable()
                VStack(alignment:.leading) {
                    Text("    过敏指数")
                        .bold()
                        .font(.subheadline)
                    Text("    易过敏人群应减少外出")
                        .font(.system(size: 10))
                        .foregroundColor(.secondary)
                }
            }
        }.padding(.horizontal)
    }
}

struct FitRow_Previews: PreviewProvider {
    static var previews: some View {
        FitRow()
    }
}

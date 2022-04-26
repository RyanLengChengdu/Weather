//
//  InfoRow.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/26.
//

import SwiftUI

struct InfoRow: View {
    var body: some View {
        VStack {
            HStack{
                Image("image1")
                    .resizable()
                    .scaledToFit()
                Image("image2")
                    .resizable()
                    .scaledToFit()
                Image("image3")
                    .resizable()
                    .scaledToFit()
            }
            Text("川西著名的佛教寺院，可品尝四川特有的盖碗茶，欣赏民间艺人的弹唱，感受虔诚佛...")
            HStack{
                Text("2022-04-08")
                Spacer()
                Label("12", systemImage: "eye")
            }.foregroundColor(.secondary)
        }.padding()
            .background(.white)
            .cornerRadius(12)
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow()
    }
}

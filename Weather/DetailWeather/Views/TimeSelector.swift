//
//  TimeSelector.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/24.
//

import SwiftUI

struct TimeSelector: View {
    @Binding var selectedIndex:Int
    var arr = [["今天","4/24"],["明天","4/25"],["后天","4/26"],["周五","4/27"],["周六","4/28"],["周日","4/29"],["周一","4/30"]]
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading, spacing: 20){
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment:.center, spacing: 20){
                    
                    ForEach(0..<arr.count) { i in
                        VStack{
                            if i == selectedIndex{
                                Text(arr[i][0])
                                    .bold()
                                Text(arr[i][1])
                                    .bold()
                            }else{
                                Text(arr[i][0])
                                Text(arr[i][1])
                            }
                        }.onTapGesture {
                            selectedIndex = i
                        }
                    }
                }
            }
            .padding(10)
            .background(Color(red: 0.938, green: 0.945, blue: 0.961))
            
        }
    }
}

struct TimeSelector_Previews: PreviewProvider {
    static var previews: some View {
        TimeSelector(selectedIndex: .constant(0))
    }
}

//
//  LifeAssistant.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/20.
//

import SwiftUI

struct LifeAssistant: View {
    let rule = [GridItem(.adaptive(minimum: 50))]
    var AssistantArr = [["ic-drying","晾晒"],["ic-drug","感冒"],["ic-hairdressing","美发"],["ic-kite","放风筝"],["ic-makeup","化妆"],["ic-travel","旅游"],["ic-uv","紫外线"],["ic-fish","钓鱼"],["ic-more","更多"]]
    var body: some View {
        VStack(alignment:.leading){
            Text("生活小助手")
                .bold()
                .font(.title3)
            
            
            LazyVGrid(columns: rule, alignment: .center, spacing: 10) {
                
                ForEach(AssistantArr,id: \.self){arr in
                    NavigationLink {
                        TravelInfo()
                            .navigationTitle("旅游指南")
                            .navigationBarTitleDisplayMode(.inline)
                    } label: {
                        VStack{
                            Image(arr[0])
                                .resizable()
                                .frame(width: 34.5, height: 37)
                            Text(arr[1])
                                .foregroundColor(.secondary)
                        }
                    }

                    
                }

            }
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct LifeAssistant_Previews: PreviewProvider {
    static var previews: some View {
        LifeAssistant()
    }
}

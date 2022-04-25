//
//  Home.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/25.
//

import SwiftUI

struct Home: View {
    @State var selectedIndex2 = 0
    @State var selectedIndex3 = 0
    var arr = [["今天4月26日","27°~18°","ic-wx"],["明天4月27日","27°~12°","ic-pl"],["后天4月28日","23°~18°","ic-ws"],["周四4月29日","27°~12°","ic-pl"],["周五4月30日","27°~18°","ic-ws"]]
    
    var arr2 = [["ic-wx","20°","12:00"],["ic-pl","18°","13:00"],["ic-ws","21°","14:00"],["ic-wx","22°","15:00"],["ic-pl","24°","16:00"],["ic-ws","22°","17:00"]]
    var body: some View {
        
        NavigationView {
            ScrollView {
                TopView()
                SeveralRows()
                //第一个scrollView
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment:.center, spacing: 20){
                        
                        ForEach(0..<arr.count) { i in
                            HStack {
                                if i == selectedIndex2{
                                    Image(arr[i][2])
                                        .shadow(color: .white, radius: 3,  y: 3)
                                }else{
                                    Image(arr[i][2])
                                }
                                VStack{
                                    if i == selectedIndex2{
                                        Text(arr[i][0])
                                            .bold()
                                        Text(arr[i][1])
                                            .bold()
                                    }else{
                                        Text(arr[i][0])
                                        Text(arr[i][1])
                                    }
                                }.onTapGesture {
                                    selectedIndex2 = i
                                }
                            }
                        }
                    }
                }
                .padding(10)
                //第二个scrollView
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment:.center, spacing: 20){
                        
                        ForEach(0..<arr2.count) { i in
                            if i == selectedIndex3{
                                
                                VStack {
                                    Image(arr2[i][0])
                                        .shadow(color: .white, radius: 7,  y: 5)
                                    Text(arr2[i][1])
                                        .bold()
                                    Text(arr2[i][2])
                                        .bold()
                                    Image(systemName: "location.north.circle")
                                }
                                
                                .background(Image("box")
                                    .resizable()
                                    .scaledToFill())
                            }else{
                                VStack{
                                    Image(arr2[i][0])
                                    Text(arr2[i][1])
                                    Text(arr2[i][2])
                                }.onTapGesture {
                                    selectedIndex3 = i
                                }
                                
                            }
                            
                            
                        }
                    }
                }
                .padding(.horizontal)
            }
            .background(Image("blackmask-img")
                .resizable()
                .scaledToFill()
                .opacity(0.15)
            )
            .ignoresSafeArea()
            .foregroundColor(.white)
            .toolbar() {
                ToolbarItem(placement:.navigationBarLeading){
                    Button {
                        
                    } label: {
                        Text("成都")
                            .foregroundColor(.white)
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("ic-searchfor")
                }
            }
            .background(Image("fdjjwehf-img"))
            .padding(.top,-10)
            //.padding(.bottom,20)
            .padding(.horizontal)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}





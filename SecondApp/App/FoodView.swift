//
//  ContentView.swift
//  SecondApp
//
//  Created by Zemise on 2023/5/7.
//

import SwiftUI

struct FoodView: View {
    // MARK: -Properties
    let headers: [Header] = headersData
    
    // MARK:  - Body
    var body: some View {
        
        // 纵向滚动视图
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                // MARK: -Header
                // 横向滚动视图
                ScrollView(.horizontal,showsIndicators: false){
                    // HStack容器用于呈现所有的HeaderView，顶端对齐，子视图距离为0
                    HStack(alignment: .top, spacing: 0){
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        } // : Loop
                    } // : HStack
                } // : ScrollView
                
                Text("小吃的烹制方式")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                CookingWayView()
                    .frame(maxWidth: 640)
                
                // MARK: - Footer
                VStack(alignment: .center, spacing: 20){
                    Text("关于北京的小吃")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorBrownAdaptive"))
                        .padding(8)
                    
                    Text("北京小吃，历史悠久，技艺精湛，品种繁多。荟萃我国大江南北、长城内外的风味。愿《Second》App能扩展您的视野，丰富您的生活")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                } // : VStack
                .frame(maxWidth: 640)
                // 为容器四周添加默认间隔距离
                .padding()
                // 为容器底部添加一定的间隔距离
                .padding(.bottom, 85)
            } // : VStack
        } // : ScrollView
        .edgesIgnoringSafeArea(.all)
        
      
    }
}


// MARK: -TitleModifier
struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorBrownAdaptive"))
            
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FoodView()
                .preferredColorScheme(.light)
            
            FoodView()
                .preferredColorScheme(.dark)
        }
    }
}

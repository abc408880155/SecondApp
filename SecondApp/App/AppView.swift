//
//  AppView.swift
//  SecondApp
//
//  Created by Zemise on 2023/5/7.
//

import SwiftUI

struct AppView: View {
    
    // MARK: - Body
    var body: some View {
        TabView {
            BeijingView()
            .tabItem(){
                Image("TabIcon-Beijing")
                Text("北京")
      
            }
            
            FoodView()
                .tabItem(){
                    Image("TabIcon-Food")
                    Text("小吃")
                    
                }
            
            HutongView()
                .tabItem(){
                    Image("TabIcon-Hutong")
                    Text("胡同")
                    
                }
            
            SettingsView()
                .tabItem(){
                    Image("TabIcon-Settings")
                    Text("设置")
                    
                }
        } // : TabView
        // 让文本的颜色匹配系统主色
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        // 同时看到浅色和深色模式的效果
        Group{
            AppView()
                .preferredColorScheme(.light)
            AppView()
                .preferredColorScheme(.dark)
        }
        
    }
}

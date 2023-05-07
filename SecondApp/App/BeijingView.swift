//
//  BeijingView.swift
//  SecondApp
//
//  Created by Zemise on 2023/5/7.
//

import SwiftUI

struct BeijingView: View {
    // MARK: - Properties
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            // 上下两个Spacer撑开VStack容器内部的空间
            Spacer()
            Image("Beijing-Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                // 设置图片阴影
                .shadow(color: Color("ColorBlackTransparentDark"),
                        radius: 12,x: 0,y: 8)
            
                .scaleEffect(pulsateAnimation ? 1.0 : 0.9)
                .opacity(pulsateAnimation ? 1.0 : 0.9)
                // 动画时常1.5秒 永久正反向动画效果
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
            
              // 下属方式在iOS15后被弃用，改为以上代码方式
                // .withAnimation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
                // .animation(Animation.easeOut(duration: 1.5)
                    // .repeatForever(autoreverses: true))
            
            VStack {
                Text("这里是北京")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("北京，是一座亲切而又大气磅礴的城市。既能海纳百川，又有着自己独特的风姿，既能独树一帜，又不孤芳自赏")
                    // 修饰Text无行数限制
                    .lineLimit(nil)
                    .font(.headline)
                    .foregroundColor(Color("ColorBrown"))
                    .multilineTextAlignment(.center)
                    // 修饰行距
                    .lineSpacing(8)
                    .padding(.horizontal, 20)
//                    .frame(width: 600, height: 120)
            }
            .padding()

            Spacer()
        } // : VStack
        .background(Image("Background")
            .resizable()
            // 全屏幕显示背景
            .scaledToFill()
        )
        // 忽略屏幕四个方向的安全区域限制，实现VStack容器充满屏幕
        .edgesIgnoringSafeArea(.all)
        // 动画修饰器
        .onAppear {
            self.pulsateAnimation.toggle()
        }
    }
}

struct BeijingView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            BeijingView()
                .preferredColorScheme(.light)
            BeijingView()
                .preferredColorScheme(.dark)
        }
    }
}

//
//  CookingWayView.swift
//  SecondApp
//
//  Created by Zemise on 2023/5/9.
//

import SwiftUI

struct CookingWayView: View {
    
    // MARK: - Body
    var body: some View {
        HStack(){
            // 第一列
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image("蒸-Icon").resizable().modifier(IconModifier())
                    Spacer()
                    Text("蒸")
                } // : HStack
                HStack() {
                    Image("煎-Icon").resizable().modifier(IconModifier())
                    Spacer()
                    Text("煎")
                } // : HStack
                HStack() {
                    Image("烙-Icon").resizable().modifier(IconModifier())
                    Spacer()
                    Text("烙")
                } // : HStack
                HStack() {
                    Image("爆-Icon").resizable().modifier(IconModifier())
                    Spacer()
                    Text("爆")
                } // : HStack
            } // : VStack
            
            // 第二列
            Image(systemName: "heart.circle")
                .font(Font.title.width(.standard))
                .imageScale(.large)
            
            // 第三列
            VStack(alignment: .leading, spacing: 4){
                HStack(){
                    Text("烤")
                    Spacer()
                    Image("烤-Icon").resizable().modifier(IconModifier())
                } // : HStack
                HStack(){
                    Text("涮")
                    Spacer()
                    Image("涮-Icon").resizable().modifier(IconModifier())
                } // : HStack
                HStack(){
                    Text("冲")
                    Spacer()
                    Image("冲-Icon").resizable().modifier(IconModifier())
                } // : HStack
                HStack(){
                    Text("煨")
                    Spacer()
                    Image("煨-Icon").resizable().modifier(IconModifier())
                } // : HStack
            } // :VStack
            
            
            
            
        } // :HStack
        // 插图标注样式
        .font(.callout)
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
        
    }
}

struct IconModifier: ViewModifier {
    // 参数content是将要添加修饰器效果的视图对象，返回修好的视图对象
    func body(content: Content) -> some View {
        content
            // 这里设定宽度、高度、对齐方式
            .frame(width: 42, height: 42,alignment: .center)
    }
}

struct CookingWayView_Previews: PreviewProvider {
    static var previews: some View {
        CookingWayView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}

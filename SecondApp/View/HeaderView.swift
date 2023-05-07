//
//  HeaderView.swift
//  SecondApp
//
//  Created by Zemise on 2023/5/7.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Image("驴打滚-slice-1")
                .resizable()
                .scaledToFill()
            
        }
        .frame(width: 480,height: 320,alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
                .preferredColorScheme(.light)
            HeaderView()
                .preferredColorScheme(.dark)
        }
    }
}

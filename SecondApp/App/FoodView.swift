//
//  ContentView.swift
//  SecondApp
//
//  Created by Zemise on 2023/5/7.
//

import SwiftUI

struct FoodView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}

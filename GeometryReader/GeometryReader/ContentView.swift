//
//  ContentView.swift
//  GeometryReader
//
//  Created by KRENGLSSEAN on 2021/04/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
            HStack {
                Image("Cake VStack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.5)
                Text("Reading is dreaming with open eyes.")
                    .layoutPriority(1)
                Image("Pancake VStack")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

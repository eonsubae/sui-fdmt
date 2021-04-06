//
//  ContentView.swift
//  ThreeAxisLayout
//
//  Created by KRENGLSSEAN on 2021/04/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
            Image("Catground")
                .resizable()
                .scaledToFit()
                .overlay(
                    Image("Badge")
                        .resizable()
                        .scaledToFit()
                        .frame(width: proxy.size.width / 3)
                        .padding(-proxy.size.width / 30)
                    , alignment: .bottomTrailing
                )
            /*
            ZStack(alignment: .bottomTrailing) {
                Image("Catground")
                    .resizable()
                    .scaledToFit()
                
                Image("Badge")
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width / 3)
                    .padding(-proxy.size.width / 30)
            }*/
        }
        .frame(width: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

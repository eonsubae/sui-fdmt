//
//  ContentView.swift
//  AlignmentGuide
//
//  Created by KRENGLSSEAN on 2021/03/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Frogon")
                .resizable()
                .scaledToFit()
                .frame(width: 60)
            
            Text("Alignment == 🐱!")
                .multilineTextAlignment(.center)

            Image("Xcode Magic")
                .resizable()
                .scaledToFit()
                .frame(width: 240)
                .alignmentGuide(.leading) { $0[HorizontalAlignment.center] }
        }
        
        /*
        HStack {
            Image("Frogon")
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .alignmentGuide(VerticalAlignment.center) { $0[.bottom] * 3.5 }
            
            Text("Alignment == 🐱!")
                .multilineTextAlignment(.center)
                .alignmentGuide(VerticalAlignment.center) { _ in 300 }

            Image("Xcode Magic")
                .resizable()
                .scaledToFit()
                .frame(width: 240)
                .alignmentGuide(VerticalAlignment.center) { $0[.top] - 200 }
        }
        */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

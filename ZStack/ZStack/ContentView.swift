//
//  ContentView.swift
//  ZStack
//
//  Created by KRENGLSSEAN on 2021/04/04.
//

import SwiftUI

struct ContentView: View {
    let gradient = LinearGradient(
        gradient: Gradient(
            stops: [
                .init(color: .brightSeafoam, location: CGFloat(3.0 / 8)),
                .init(color: .darkSeafoam, location: 1)
            ]
        ), startPoint: .topTrailing, endPoint: .bottom)
    
    var body: some View {
        ZStack(alignment: .center) {
          Image("RWStack")
            .resizable()
            .scaledToFit()
            
          gradient
            .blendMode(.multiply)
            .layoutPriority(-1)

          VStack(alignment: .leading) {
            Image("ZStack")
              .resizable()
              .scaledToFit()
              .frame(width: 80)

            Text("Stacks to the Max!")
              .fontWeight(.semibold)
                .foregroundColor(.brightSeafoam)
          }
          .alignmentGuide(HorizontalAlignment.center) { $0[.trailing] }
          .alignmentGuide(VerticalAlignment.center) { $0[.top] }
        }
    }
}

extension Color {
    static let brightSeafoam = Color("Bright Seafoam")
    static let darkSeafoam = Color("Dark Seafoam")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

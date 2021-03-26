import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Image("Cake VStack")
                .resizable()
                .scaledToFit()
            Text("Hello, Layout!")
            Image("Pancake VStack")
                .resizable()
                .frame(width: 100.0, height: 100.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

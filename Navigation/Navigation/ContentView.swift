import SwiftUI

struct ContentView: View {
  @State var artworks = artData
  
  var body: some View {
      List(artworks) { artwork in
          Text(artwork.title)
      }
      .listStyle(PlainListStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

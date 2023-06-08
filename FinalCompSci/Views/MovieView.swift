

import SwiftUI

struct MovieView: View {
    // MARK: stored properties
    
    @State var currentMovie = exampleMovie
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Rectangle()
                        .fill(Color.blue)
                        .cornerRadius(10)
                        .frame(width: 300, height: 250)
                    
                    HStack {
                        VStack {
                            Text(currentMovie.Title)
                                .font(.title)
                            
                            Text("\(currentMovie.Year)")
                    
                                Text("\(currentMovie.Rated)")
                             
                            
                            Text("\(currentMovie.Released)")
                            Text("\(currentMovie.Runtime)")
                            Text("\(currentMovie.Genre)")
                            Text("\(currentMovie.Language)")
                        }
                    }
                }
            }
            .navigationTitle("Movie Information")
        }
    }
}

import SwiftUI

struct MovieView: View {
    @State var currentMovie: Movie?
    
    var body: some View {
        NavigationView {
            VStack {
                if let currentMovie = currentMovie {
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
                                    
                                    Text(currentMovie.Rated)
                                    
                                    Text(currentMovie.Released)
                                    Text(currentMovie.Runtime)
                                    Text(currentMovie.Genre)
                                    Text(currentMovie.Language)
                                }
                            }
                        }
                    }
                } else {
                    ProgressView()
                }
            }
            .navigationTitle("Movie Information")
        }
        
            }
        }
    


struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}


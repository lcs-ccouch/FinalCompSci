import SwiftUI
import Blackbird

struct MovieView: View {
    @State var currentMovie: Movie?
    @State var savedToDatabase = false
    @Environment (\.blackbirdDatabase) var db: Blackbird.Database?
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    AsyncImage(url: URL(string: currentMovie!.Poster))
                    Button("Add to Favourites") {
                        Task {
                            // Write to database
                            if let currentMovie = currentMovie {
                                try await db!.transaction { core in
                                    try core.query("INSERT INTO FavouriteMovie (Title, Year, imdbID, Poster) VALUES (?, ?, ?, ?)",
                                                   currentMovie.Title, currentMovie.Year, currentMovie.imdbID, currentMovie.Poster)
                                    // Record that this movie has been saved
                                    savedToDatabase = true
                                }
                            }
                        }
                    }.disabled(savedToDatabase)
                }
                
            }
            
            //            .task {
            //                foundMovies = await NetworkService.fetch()
        }
        .navigationTitle(currentMovie!.Title)
        
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}



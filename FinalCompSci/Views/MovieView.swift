import SwiftUI

struct MovieView: View {
    @State var currentMovie: Movie
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    AsyncImage(url: URL(string: currentMovie.Poster))
                }
                .navigationTitle(currentMovie.Title)
            }
            //            .task {
            //                foundMovies = await NetworkService.fetch()
        }
        
    }
}

//}



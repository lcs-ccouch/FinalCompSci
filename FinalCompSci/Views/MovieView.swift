import SwiftUI

struct MovieView: View {
    @State var currentMovie: Movie
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                   
                }
                .navigationTitle(currentMovie.Title)
            }
            //            .task {
            //                foundMovies = await NetworkService.fetch()
        }
        
    }
}

//}



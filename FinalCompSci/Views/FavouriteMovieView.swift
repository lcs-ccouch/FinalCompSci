import SwiftUI
import Blackbird

struct FavouriteMovieView: View {
    @State var currentMovie: FavouriteMovie?
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    AsyncImage(url: URL(string: currentMovie!.Poster))
                }
                
            }
        }
        .navigationTitle(currentMovie!.Title)
        
    }
}

struct FavouriteMovieView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteMovieView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}



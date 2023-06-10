//
//  FavouriteMovies.swift
//  FinalCompSci
//
//  Created by calum couch on 2023-06-07.
//
import Blackbird
import SwiftUI

struct FavouriteMovies: View {
    // MARK: Stored properties
    @BlackbirdLiveModels( { db in
        try await FavouriteMovie.read(from: db)
    }) var movies
    
    @State private var mutableMovies: [FavouriteMovie] = []
    
    init() {
        _mutableMovies = State(initialValue: movies.results)
    }
    
    var body: some View {
        NavigationView {
            List { ForEach(mutableMovies)  { currentMovie in
                VStack(alignment: .leading) {
                    NavigationLink(destination: FavouriteMovieView(currentMovie: currentMovie )) {
                        Text(currentMovie.Title)
                            .bold()
                            .foregroundColor(.black)
                        Spacer()
                    }
                }
            }.onDelete(perform: deleteMovie)
            }
        }.navigationTitle("Favourite Movies")
            .onChange(of: movies) { newMovies in
                        mutableMovies = newMovies.results
                    }
    }
    
    func deleteMovie(at offsets: IndexSet) {
        mutableMovies.remove(atOffsets: offsets)
    }
}


struct FavouriteMovies_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteMovies()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}

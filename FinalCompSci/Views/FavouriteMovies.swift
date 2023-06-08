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
    var body: some View {
        NavigationView {
            List(movies.results) { currentMovie in
                
                
            }
                
            }
        }
    }


struct FavouriteMovies_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteMovies()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}

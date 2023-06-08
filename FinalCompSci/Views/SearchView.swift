//
//  SearchView.swift
//  FinalCompSci
//
//  Created by calum couch on 2023-06-07.
//

import SwiftUI

struct SearchView: View {
    //MARK: Stored properties
    // holds the list of movies returned by the search
    @State var foundMovies: [Movie] = []
    //MARK: Computed Properties
    var body: some View {
        NavigationView {
            List(foundMovies, id: \.id) { currentMovie in
                VStack {
                    Text(currentMovie.Title)
                        .bold()
                    
                    
                    Text(currentMovie.Genre)
                }
                
            }
            .task {
                foundMovies = await NetworkService.fetch()
            }
            .navigationTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

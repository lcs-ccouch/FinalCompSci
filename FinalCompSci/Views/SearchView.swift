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
    @State var searchText = ""
 
    //MARK: Computed Properties
    var body: some View {
        NavigationView {
            List(foundMovies, id: \.imdbID) { currentMovie in
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(currentMovie.Title)
                            .bold()
                            .foregroundColor(.black)
                            
                        
                        Spacer()
                    }
                }
                
            }
            .searchable(text: $searchText)
            .onChange(of: searchText) { newSearchText in
                Task {
                    
                    foundMovies = await NetworkService.fetch(resultsFor: newSearchText)
            
            }
           
                }
            }
            .navigationTitle("Search")
        }
    }


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

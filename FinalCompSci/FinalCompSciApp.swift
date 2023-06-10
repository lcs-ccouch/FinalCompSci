//
//  FinalCompSciApp.swift
//  FinalCompSci
//
//  Created by calum couch on 2023-06-07.
//

import SwiftUI
import Blackbird

@main
struct FinalCompSciApp: App {
    
    var body: some Scene {
        WindowGroup {
            
            
            TabView() {
              
                SearchView()
                    .tabItem { Label("Search", systemImage: "magnifyingglass.circle")}
                
                FavouriteMovies()
                    .tabItem {Label("Favourites", systemImage: "heart.fill")
                        
                }
            }
            .environment(\.blackbirdDatabase,AppDatabase.instance)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

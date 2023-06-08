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
            FavouriteMovies()
                .environment(\.blackbirdDatabase,AppDatabase.instance)
            NavigationView {
                TabView {
                    SearchView()
                        .tabItem {
                            Label("Search", systemImage: "magnifyingglass.circle")
                        }
                    MovieView()
                        .tabItem {
                            Label("Movie", systemImage: "popcorn.circle.fill")
                        }
                    FavouriteMovies()
                        .tabItem {
                            Label("Favourites", systemImage: "heart.fill")
                              
                               
                        }
                }
                
            }
        }
    }
}

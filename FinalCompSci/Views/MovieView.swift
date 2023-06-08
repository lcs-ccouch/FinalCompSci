//
//  MovieView.swift
//  FinalCompSci
//
//  Created by calum couch on 2023-06-07.
//

import SwiftUI

struct MovieView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Rectangle()
                                .fill(Color.blue)
                                .cornerRadius(10)
                                .frame(width: 300, height: 250)
                    HStack {
                        VStack {
                            Text("Title")
                                .font(.title)
                            
                        
                            
                            Text("Year")
                            Text("Rated")
                            Text("Released")
                            Text("Runtime")
                            Text("Genre")
                            Text("Langauge")
                        }
                    }
                }
                
            }
            
            
            
            .navigationTitle("Movie Information")
            
            
        }
        
    }
    
}
struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}

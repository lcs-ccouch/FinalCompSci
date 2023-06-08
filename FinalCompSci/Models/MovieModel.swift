import Foundation
import Blackbird

struct FavouriteMovie: Codable, BlackbirdModel {
    
    @BlackbirdColumn var Title: String
    @BlackbirdColumn var Year: Int
    @BlackbirdColumn var Rated: String
    @BlackbirdColumn var Released: String
    @BlackbirdColumn var Runtime: String
    @BlackbirdColumn var Genre: String
    @BlackbirdColumn var Language: String
    @BlackbirdColumn var id: String
}

let exampleMovie = Movie(
    Title: "Guardians of the Galaxy Vol. 2",
    Year: 2017,
    Rated: "PG-13",
    Released: "05 May 2017",
    Runtime: "136 mins",
    Genre: "Action",
    Language: "English",
    id: "1"
    
)
struct Movie: Codable {
    
    var Title: String
    var Year: Int
    var Rated: String
    var Released: String
    var Runtime: String
    var Genre: String
    var Language: String
    var id: String
}

struct SearchResult: Codable {
   
    let resultCount: Int
    let results: [Movie]
    
}

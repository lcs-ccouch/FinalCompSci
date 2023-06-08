import Foundation
import Blackbird

struct Movie: Identifiable, Codable, BlackbirdModel {
    var id = UUID()
    @BlackbirdColumn var Title: String
    @BlackbirdColumn var Year: Int
    @BlackbirdColumn var Rated: String
    @BlackbirdColumn var Released: String
    @BlackbirdColumn var Runtime: String
    @BlackbirdColumn var Genre: String
    @BlackbirdColumn var Language: String
    @BlackbirdColumn var imdbID: String
}

let exampleMovie = Movie(
    Title: "Guardians of the Galaxy Vol. 2",
    Year: 2017,
    Rated: "PG-13",
    Released: "05 May 2017",
    Runtime: "136 mins",
    Genre: "Action",
    Language: "English",
    imdbID: "imdbID"
    
)



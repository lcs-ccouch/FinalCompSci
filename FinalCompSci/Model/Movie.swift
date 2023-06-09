import Foundation
import Blackbird

struct FavouriteMovie: Codable, BlackbirdModel {
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var Title: String
    @BlackbirdColumn var Year: String
    @BlackbirdColumn var imdbID: String
    @BlackbirdColumn var Poster: String
}

let exampleMovie = Movie(
    Title:  "Batman Begins",
    Year:"2005",
    imdbID:"tt0372784",
    Poster:"https://m.media-amazo.com/images/M/MV5BOTY4YjI2N2MtYmFlMC00ZjcyLTg3YjEtMDQyM2ZjYzQ5YWFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"
)

struct Movie: Codable {
    var Title: String
    var Year: String
    var imdbID: String
    var Poster: String
}



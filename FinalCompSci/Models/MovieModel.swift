import Foundation

struct Movie: Identifiable {
    var id = UUID()
    var Title: String
    var Year: Int
    var Rated: String
    var Released: String
    var Runtime: String
    var Genre: String
    var Language: String
}

let exampleMovie = Movie(
    Title: "Guardians of the Galaxy Vol. 2",
    Year: 2017,
    Rated: "PG-13",
    Released: "05 May 2017",
    Runtime: "136 mins",
    Genre: "Action",
    Language: "English"
)


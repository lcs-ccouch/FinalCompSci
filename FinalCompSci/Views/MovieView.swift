import SwiftUI

struct MovieView: View {
    
    @State var foundMovies: [Movie] = []
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    
                }
                .navigationTitle("Movie Information")
            }
            .task {
                foundMovies = await NetworkService.fetch()
            }
            
        }
    }
    
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}


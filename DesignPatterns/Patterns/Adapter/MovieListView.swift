//
//  MovieListView.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import SwiftUI

struct MovieListView: View {
    
    @State var movies = MovieService().getMovies()

    var body: some View {
        List(movies, id: \.id) { movie in
            Text(movie.title)
        }
    }
}

#Preview {
    MovieListView()
}

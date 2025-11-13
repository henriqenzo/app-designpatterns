//
//  MovieService.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

class MovieService {
    
    private func fetchMoviesInExternalType() -> [ExternalMovie] {
        let movies: [ExternalMovie] = [
            ExternalMovie(identifier: 1, name: "Filme de Mistério", category: "Mistério"),
            ExternalMovie(identifier: 2, name: "Filme de Romance", category: "Romance"),
            ExternalMovie(identifier: 3, name: "Filme de Comédia", category: "Comédia")
        ]
        
        return movies
    }
    
    func getMovies() -> [Movie] {
        var movies: [Movie] = []
        
        for externalMovie in fetchMoviesInExternalType() {
            let movieToAppend = MovieAdapter.adapt(externalMovie)
            movies.append(movieToAppend)
        }
        
        return movies
    }
    
}

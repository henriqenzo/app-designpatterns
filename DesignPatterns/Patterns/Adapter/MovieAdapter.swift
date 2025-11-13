//
//  MovieAdapter.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

class MovieAdapter {
    
    static func adapt(_ externalMovie: ExternalMovie) -> Movie {
        return Movie(id: externalMovie.identifier, title: externalMovie.name, genre: externalMovie.category)
    }
    
}

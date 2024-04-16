//
//  Superhero.swift
//  SuperheroFinder
//
//  Created by Mañanas on 16/4/24.
//

import Foundation

struct SuperheroResponse: Codable {
    
    let response : String
    let results : [Superhero]
}

struct Superhero: Codable{
    let id:String
    let name: String
    let image: Image
}

struct Image: Codable{
    let url: String
}



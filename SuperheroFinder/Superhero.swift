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
    let powerstats : Stats
    let biography : Biography
}

struct Image: Codable{
    let url: String
}

struct Stats : Codable{
    let intelligence: String?
    let strength: String?
    let speed: String?
    let durability: String?
    let power: String?
    let combat: String?
}
struct Biography: Codable {
    let publisher: String
}



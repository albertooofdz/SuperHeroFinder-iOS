//
//  SuperheroProvider.swift
//  SuperheroFinder
//
//  Created by Mañanas on 16/4/24.
//

import Foundation

class SuperheroProvider{
    
    static func searchByName(query:String, completionHandler: @escaping ([Superhero]) -> Void){
        
        let url = URL(string: "https://www.superheroapi.com/api.php/7252591128153666/search/\(query)")!
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error fetching Superheroes: \(error)")
                return
            }
            guard let data = data else {
                print("Error with the data")
                return
            }
            
            print("Data: \(data)")
            
            guard let json = try? JSONDecoder().decode(SuperheroResponse.self, from: data) else{
                print("Json parse exception")
                return
                }
            
            completionHandler(json.results)
        })
        
        task.resume()
        
    }
   
}

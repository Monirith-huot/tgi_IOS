//
//  ModelData.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 6/2/22.
//

import Foundation

var previewCountry: Country = load("countryData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main Bundle")
    }
    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError("Coudln't load \(filename) in main Bundle: \(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch {
        fatalError("Coudn't parse \(filename) as \(T.self) : \n\(error)")
    }
    
}

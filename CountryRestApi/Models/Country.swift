//
//  Country.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 6/2/22.
//

import Foundation


struct Country: Decodable, Hashable {
    
    var name: Name
    var population : Int
    var area: Double
    var borders: [String]?
    var timezones: [String]
   
    var flags: Flag
    var maps: Map
//    var capital : [String]
//    var flag: String
    
   
    
    struct Name: Decodable,Hashable {
        var common: String
        var official : String
    }
    
    struct Flag: Decodable, Hashable{
        var png: String
        var svg: String
    }
    
    struct Map: Decodable,Hashable {
        var googleMaps: String
        var openStreetMaps: String 
    }
    
    
}

//
//  CountryManager.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 6/2/22.
//

import Foundation

enum Filter: String,CaseIterable {
    case population, name, size
}



class CountryManager: ObservableObject {
    
    @Published private(set) var countries:[Country] = []
    
    
    func getCountry() async {
        
        do {
            guard let url = URL(string: "https://restcountries.com/v3.1/all") else {fatalError("Error Missing URl ")}
            
            let urlRequest = URLRequest(url: url)
            
            let (data, response) = try await  URLSession.shared.data(for: urlRequest)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error while fetch data from api ")}
            
            let decoder = JSONDecoder()
            let decodedData = try decoder.decode([Country].self, from: data)
            
            print(decodedData)
            
            DispatchQueue.main.async {
                decodedData.forEach { country in
                    
                    
                    self.countries.append(country)
                }
            }
            
            
            
            print(countries)
            
        }catch {
            fatalError("Error Fetching data from restcountry api: \(error)")
        }
    }
}



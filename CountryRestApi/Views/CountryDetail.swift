//
//  CountryDetail.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 7/2/22.
//

import SwiftUI

struct CountryDetail: View {
    var country: Country
    //    var url = "https://flagcdn.com/w320/kh.png"
    var body: some View {
       
            VStack(spacing: 30){
                AsyncImage(url: URL(string: country.flags.png)){ image in
                    image
                        .resizable()
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity, maxHeight: 200)
                }placeholder: {
                    ProgressView()
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 200)
                
                
                .padding(.horizontal,30)
                
                Text(country.name.common)
                    .bold()
                    .font(.title)
                
                Text("\(country.name.common) has \(country.population) peoples, \(country.area) kilometer square. It has is a capital city. TimeZone: \(country.timezones[0])")
                
                    .padding(.horizontal, 30)
                
                
                NavigationLink {
                    CountryMap(url: country.maps.googleMaps)
                        
                }label: {
                    CountryButton()
                }
                
                Spacer()
     
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
        
        
    }
}

struct CountryDetail_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetail(country: previewCountry)
        //        CountryDetail()
    }
}

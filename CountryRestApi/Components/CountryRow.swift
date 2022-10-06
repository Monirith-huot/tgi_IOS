//
//  CountryRow.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 6/2/22.
//

import SwiftUI

struct CountryRow: View {
    var country: Country
//    var name: String
//    var imageUrl: String
//
    var body: some View {
        HStack(spacing: 20){
            HStack {
                AsyncImage(url: URL(string: country.flags.png)){ image in
                    image
                        .resizable()
                        .cornerRadius(5)
                        
                }placeholder: {
                    ProgressView()
                }
                .frame(width: 60, height: 40)
                
                Text(country.name.common)
                    .foregroundColor(.black)
                    .bold()
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.title2)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
                
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct CountryRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryRow (country: previewCountry)
    }
}

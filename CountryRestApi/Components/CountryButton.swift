//
//  CountryButton.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 7/2/22.
//

import SwiftUI

struct CountryButton: View {
 
    var body: some View {
        HStack(spacing: 20){
            Text("Open Map")
                .font(.title3)
            
            Image(systemName: "location.fill")
        }
        .foregroundColor(.white)
        .padding()
        .frame(maxWidth: .infinity, alignment: .center)
        .background(.blue)
        .cornerRadius(10)
        .padding(.horizontal, 20)
    }
}

struct CountryButton_Previews: PreviewProvider {
    static var previews: some View {
        CountryButton()
    }
}

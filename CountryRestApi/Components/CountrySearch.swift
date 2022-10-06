//
//  CountrySearch.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 6/2/22.
//

import SwiftUI

struct CountrySearch: View {
    
    @State private var text = ""
    @State var isClicked = false
    var body: some View {
        
   
        HStack(alignment: .bottom, spacing: 20){
                
                if isClicked {
                   
                        TextField("Search your contry", text: $text)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                            .padding(10)
                }
                
                Image(systemName: "magnifyingglass")
                    .font(.title3)
                    .padding(10)
                    
                    .padding(.horizontal, isClicked ? 10 :  0)
                    
                    .onTapGesture{
                        withAnimation{
                            isClicked = !isClicked
                        }
                        
                    }
                    
        }
        
            .foregroundColor(.white)
            .background(.gray.opacity(0.5))
            .cornerRadius(isClicked ? 10 : 50)
            .padding(.horizontal, isClicked ? 20: 0 )
        
            
            
            
        
    }
}

struct CountrySearch_Previews: PreviewProvider {
    static var previews: some View {
        CountrySearch()
    }
}

//
//  CountryFilterButton.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 7/2/22.
//

import SwiftUI

struct CountryFilterButton: View {
    @State var isClicked = false
    var body: some View {
        Image(systemName: isClicked ? "x.circle" : "line.3.horizontal.decrease.circle")
            .font(.system(size: 24))
            .popover(isPresented: $isClicked){
                VStack(alignment: .leading, spacing: 10){
                    ForEach(Filter.allCases, id: \.self){ query in
                        Text(query.rawValue)
                    }
                }
            }
            
            .onTapGesture{
                withAnimation(.easeIn(duration: 5)){
                    isClicked = !isClicked
                }
            }
    }
}

struct CountryFilterButton_Previews: PreviewProvider {
    static var previews: some View {
        CountryFilterButton()
    }
}

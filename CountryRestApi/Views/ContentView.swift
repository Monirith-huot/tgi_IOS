//
//  ContentView.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 6/2/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var countryManager = CountryManager()
    @State var isClicked = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack (spacing: 10){
                    Spacer()
                    CountrySearch()
                    CountryFilterButton()
                        .padding(.horizontal, 10)
                        
                  
                }
                .padding(.horizontal, 10)
                
                
                ScrollView {
                    if countryManager.countries.isEmpty {
                        ProgressView()
                            .task {
                                await countryManager.getCountry()
                            }
                    }
                    else {
                        ForEach(countryManager.countries, id: \.self){ country in
                            NavigationLink{
                                CountryDetail(country: country)
                                    .environmentObject(countryManager)
                            }label: {
                                CountryRow(country: country)
                                    .environmentObject(countryManager)
                            }
                        }
                    }
                }
                    
                Spacer()
            }
            .padding(.vertical, 30)
            .navigationBarHidden(true)
            
        }
        .onAppear{
            UINavigationBar.appearance().tintColor = .blue
        }
        
       
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

//
//  CountryMap.swift
//  CountryRestApi
//
//  Created by oeng hokleng on 7/2/22.
//

import SwiftUI
import WebKit

struct CountryMap: UIViewRepresentable {

    
    let url : String
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
         uiView.load(URLRequest(url: URL(string: url)!))
            
    }
    
    
}

struct CountryMap_Previews: PreviewProvider {
    static var previews: some View {
        CountryMap(url:  "https://www.google.com/maps/place/Cambodia/@12.1363981,102.7361403,7z/data=!3m1!4b1!4m5!3m4!1s0x310787bfd4dc3743:0xe4b7bfe089f41253!8m2!3d12.565679!4d104.990963")
    }
}

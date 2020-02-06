//
//  DetailView.swift
//  hacker_news
//
//  Created by Mark Chen on 2020/2/6.
//  Copyright © 2020 Mark Chen. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


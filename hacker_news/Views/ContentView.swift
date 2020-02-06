//
//  ContentView.swift
//  hacker_news
//
//  Created by Mark Chen on 1/18/20.
//  Copyright © 2020 Mark Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text("\(post.title) \(post.id )")
                    }
                }
                
            }
            .navigationBarTitle("Hack News")
        }
        .onAppear() {
            self.networkManager.fetechManager()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post : Identifiable {
//    let id : Int
//    let title : String
//}
//
//let posts = [
//    Post(id: 1, title: "hello"),
//    Post(id: 3, title: "world"),
//    Post(id: 2, title: "bye")
//]

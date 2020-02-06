//
//  PostData.swift
//  hacker_news
//
//  Created by Mark Chen on 1/21/20.
//  Copyright © 2020 Mark Chen. All rights reserved.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

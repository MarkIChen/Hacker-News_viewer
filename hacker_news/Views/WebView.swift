//
//  WebView.swift
//  hacker_news
//
//  Created by Mark Chen on 2020/2/6.
//  Copyright © 2020 Mark Chen. All rights reserved.
//
import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString {
            if let url = URL(string: safeURL) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}


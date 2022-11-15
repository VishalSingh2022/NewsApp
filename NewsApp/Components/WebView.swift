//
//  WebView.swift
//  NewsApp
//
//  Created by Vishal Singh on 14/11/22.
//

import SwiftUI
import WebKit
 
struct WebView: UIViewRepresentable {

    // MARK: - Properties

    var urlString: String?

    // MARK: - Functions
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        if let urlString = urlString, let url = URL(string: urlString) {
            let urlRequest = URLRequest(url: url)
                webView.load(urlRequest)
        }
    }
}

//
//  NewsDetailView.swift
//  NewsApp
//
//  Created by Vishal Singh on 14/11/22.
//

import SwiftUI

struct NewsDetailView: View {
    
    // MARK: - Properties
    
    let url: String?
    // MARK: - Body
    
    var body: some View {
            WebView(urlString: url)
                .edgesIgnoringSafeArea(.bottom)
    }
}

    // MARK: - Preview

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(url: Constants.UrlString.newsArticlURL)
    }
}

//
//  NewsView.swift
//  NewsApp
//
//  Created by Vishal Singh on 14/11/22.
//

import SwiftUI

struct NewsView: View {
    
    // MARK: - Properties
    
    @StateObject var newsViewModel = NewsViewModel()
    
    
    // MARK: - Body
    
    var body: some View {
        if !newsViewModel.news.isEmpty {
            List(newsViewModel.news, id: \.title) { news in
                NavigationLink(destination: NewsDetailView(url: news.url)) {
                    NewsRowCellView(news: news)
                }
            }
            .listStyle(.inset)
        } else {
            ProgressView("Loading...")
        }
    }
}


    // MARK: - Preview

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

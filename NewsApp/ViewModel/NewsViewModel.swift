//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Vishal Singh on 14/11/22.
//

import SwiftUI

class NewsViewModel: ObservableObject {
    
    // MARK: - Properties

    @Published var news: [News] = []
    
    
    init() {
        fetchNews()
    }
    
    // MARK: - Functions

    func fetchNews() {
        let url = URL(string: Constants.UrlString.newsURL)
        
        guard let url = url else { return }
            
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do {
                let news = try JSONDecoder().decode(AllNews.self, from: data)
                DispatchQueue.main.async {
                    self.news = news.articles
                }
            } catch {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}

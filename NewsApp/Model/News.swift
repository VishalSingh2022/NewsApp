//
//  News.swift
//  NewsApp
//
//  Created by Vishal Singh on 14/11/22.
//

import Foundation

struct AllNews: Codable {
    let articles: [News]
}

// MARK: - Article
struct News: Codable {    
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
  
}


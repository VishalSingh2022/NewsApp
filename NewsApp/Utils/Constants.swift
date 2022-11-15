//
//  Constants.swift
//  NewsApp
//
//  Created by Vishal Singh on 14/11/22.
//

import Foundation


struct Constants {
    
    // MARK: Text
    struct Texts {
        
        static let loading = "Loading..."
        static let emptyString = ""
        static let news = "News"
    }
    
    // MARK: URL
    struct UrlString {
        static let newsURL = "https://saurav.tech/NewsAPI/everything/cnn.json"
        
        static let newsArticlURL = "https://www.livemint.com/news/india/long-covid-more-severe-in-women-than-men-suggests-study-11650538683775.html"
    }
    
    
    // MARK: Preview Data
    static let previewNewsData = News(title: "Long Covid More Severe In Women Than Men, Suggests Study - Mint", description: "The study found that 91% of patients, who were followed up for five months on average, continued to experience Covid-19 symptoms. Breathlessness was the most common symptom of long Covid-19, followed by fatigue", url: "https://www.livemint.com/news/india/long-covid-more-severe-in-women-than-men-suggests-study-11650538683775.html", urlToImage: "https://images.livemint.com/img/2022/04/21/600x338/long_covid_symptoms_1650540839356_1650540839488.jpg")
    
    
}

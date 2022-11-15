//
//  NewsRowCellView.swift
//  NewsApp
//
//  Created by Vishal Singh on 14/11/22.
//

import SwiftUI

struct NewsRowCellView: View {
    
    // MARK: - Properties

    let news: News
    
    // MARK: - Body

    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: news.urlToImage ?? Constants.Texts.emptyString )) { image in
                image.resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .cornerRadius(10)
            } placeholder: {
                ProgressView(Constants.Texts.loading)
                    .frame(maxWidth: 100, maxHeight: 100)
            }
            
            VStack {
                Text(news.title)
                    .fontWeight(.bold)
                Text(news.description ?? "")
                    .lineLimit(3)
            }
        }
    }
}

    // MARK: - Preview

struct NewsRowCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewsRowCellView(news: Constants.previewNewsData)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

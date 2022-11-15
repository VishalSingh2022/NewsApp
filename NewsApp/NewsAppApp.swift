//
//  NewsAppApp.swift
//  NewsApp
//
//  Created by Vishal Singh on 14/11/22.
//

import SwiftUI

@main
struct NewsAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                NewsView()
                    .navigationBarTitle(Constants.Texts.news)
            }
        }
    }
}

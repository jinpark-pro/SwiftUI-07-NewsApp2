//
//  NewsItem.swift
//  NewsApp2
//
//  Created by Jungjin Park on 2024-06-21.
//

import Foundation

struct NewsItem: Codable, Identifiable {
    let id = UUID()
    let title: String
    let link: String
    let originalLink: String
    let description: String
    let pubDate: String
    
    enum CodingKeys: String, CodingKey {
        case title, link, originalLink, description, pubDate
    }
}

struct NewsResponse: Codable {
    let total: Int
    let items: [NewsItem]
}

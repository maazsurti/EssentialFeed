//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Maaz Surti on 03/08/24.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

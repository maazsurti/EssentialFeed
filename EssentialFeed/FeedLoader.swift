//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Maaz Surti on 03/08/24.
//

import Foundation

protocol FeedLoader {
    func load() async throws -> [FeedItem]
}

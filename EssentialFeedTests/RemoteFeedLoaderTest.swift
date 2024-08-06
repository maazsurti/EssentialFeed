//
//  RemoteFeedLoaderTest.swift
//  EssentialFeedTests
//
//  Created by Maaz Surti on 05/08/24.
//

import XCTest

class RemoteFeedLoader{
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    private init () { }
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func testDoestNotRequestDataFromURL(){
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        XCTAssertNil(client.requestedURL)
    }
    
    func testRequestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
}

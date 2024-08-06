//
//  RemoteFeedLoaderTest.swift
//  EssentialFeedTests
//
//  Created by Maaz Surti on 05/08/24.
//

import XCTest

class RemoteFeedLoader{
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    func testDoestNotRequestDataFromURL(){
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        XCTAssertNil(client.requestedURL)
    }
}

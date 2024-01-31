//
//  TopicTests.swift
//  TDDSampleAppTests
//
//  Created by Rene Valdes on 1/31/24.
//

@testable import TDDSampleApp
import XCTest

@MainActor
final class TopicTests: XCTestCase {
    
    func testThatTopicExists() throws {
        let topic = Topic(name: "", tag: "")
        XCTAssertNotNil(topic)
    }
    
    func testThatTopicCanBeNamed() throws {
        let namedTopic = Topic(name: "iPhone", tag: "")
        XCTAssertEqual(namedTopic.name, "iPhone", "the topic should have the name I gave it")
    }
    
    func testThatTopicHasTag() throws {
        let taggedTopic = Topic(name: "", tag: "iPhone")
        XCTAssertEqual(taggedTopic.tag, "iPhone", "Topics need to have tags")
    }
}

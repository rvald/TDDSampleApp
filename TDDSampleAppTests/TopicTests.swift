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
        let topic = Topic(name: "")
        XCTAssertNotNil(topic)
    }
    
    func testThatTopicCanBeNamed() throws {
        let namedTopic = Topic(name: "iPhone")
        XCTAssertEqual(namedTopic.name, "iPhone", "the topic should have the name I gave it")
    }
}

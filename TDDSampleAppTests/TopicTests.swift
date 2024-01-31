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
    
    var topic: Topic!
    
    override func setUp()  {
        topic = Topic(name: "iPhone", tag: "iPhone")
    }
    
    override func tearDown() {
        topic = nil
    }
    
    func testThatTopicExists() throws {
        XCTAssertNotNil(topic)
    }
    
    func testThatTopicCanBeNamed() throws {
        XCTAssertEqual(topic.name, "iPhone", "the topic should have the name I gave it")
    }
    
    func testThatTopicHasTag() throws {
        XCTAssertEqual(topic.tag, "iPhone", "Topics need to have tags")
    }
}

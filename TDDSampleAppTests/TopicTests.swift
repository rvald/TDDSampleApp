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
        let topic = Topic()
        XCTAssertNotNil(topic)
    }
}

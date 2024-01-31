//
//  PersonTests.swift
//  TDDSampleAppTests
//
//  Created by Rene Valdes on 1/31/24.
//

import XCTest
@testable import TDDSampleApp

final class PersonTests: XCTestCase {
    
    var person: Person!
    
    override func setUp() {
        person = Person(name: "Bruce Wayne", avatarLocation: "https://example.com/avatar.jpg")
    }
    
    override func tearDown() {
        person = nil
    }
    
    func testThatPersonHasTheRightName() throws {
        XCTAssertEqual(person.name, "Bruce Wayne", "expecting a person to proive its name")
    }
    
    func testThatPersonHasAnAvatarURL() {
        let url = URL(string: "https://example.com/avatar.jpg")!
        XCTAssertEqual(person.avatarLocation, url.absoluteString, "The person's avatar should be represented by a url")
    }
}

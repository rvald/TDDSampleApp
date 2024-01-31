//
//  QuestionTests.swift
//  TDDSampleAppTests
//
//  Created by Rene Valdes on 1/31/24.
//

import XCTest
@testable import TDDSampleApp

@MainActor
final class QuestionTests: XCTestCase {
    func testQuestionHasADate() throws {
        let question = Question()
        let testDate = Date()
        XCTAssertEqual(question.date, testDate, "Question needs to provide a date")
    }
}

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
    
    var question: Question!
    var testDate: Date!
    
    override func setUp() {
        question = Question(title: "Do iPhones also dream of electric sheep?",
                            score: 42)
        testDate = Date()
    }
    
    override func tearDown() {
        question = nil
    }
    
    func testQuestionHasADate() throws {
        XCTAssertEqual(question.date, testDate, "Question needs to provide a date")
    }
    
}

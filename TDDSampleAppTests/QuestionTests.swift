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
        testDate = Date()
        question = Question(date: testDate,
                            title: "Do iPhones also dream of electric sheep?",
                            score: 42)
        
    }
    
    override func tearDown() {
        question = nil
    }
    
    func testQuestionHasADate() throws {
        XCTAssertEqual(question.date, testDate, "Question needs to provide a date")
    }
    
    func testQuestionsKeepsScore() throws {
        XCTAssertEqual(question.score, 42, "Questions need a numeric score")
    }
}

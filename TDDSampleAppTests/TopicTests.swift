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
    
    func testForAListOfQuestions() throws {
        XCTAssertNotNil(topic.recentQuestions)
    }
    
    func testForInitiallyEmptyQuestionList() throws {
        XCTAssertEqual(topic.recentQuestions().count, 0, "No questions added yet, count should be zero")
    }
    
    func testAddingAQuestionToTheList() throws {
        let question = Question(date: Date(), title: "", score: 42)
        topic.addQuestion(question)
        XCTAssertEqual(topic.recentQuestions().count, 1, "Add a question, and the count of questions should go up")
    }
    
    func testQuestionsAreListedChronologically() throws {
        
        let q1 = Question(date: Date.distantPast, title: "", score: 0)
        let q2 = Question(date: Date.distantFuture, title: "", score: 1)
        
        topic.addQuestion(q2)
        topic.addQuestion(q1)
        
        let questions = topic.recentQuestions()
        let firstQuestion = questions[0]
        let secondQuestion = questions[1]
        
        XCTAssertTrue(firstQuestion.date < secondQuestion.date, "The later date should appear first in the list")
    }
    
    func testLimitOfTwentyQuestions() throws {
        var question = Question(date: Date(), title: "", score: 2)
        for i in 0..<25 {
            topic.addQuestion(question)
        }
        XCTAssertTrue(topic.recentQuestions().count < 21)
    }
}

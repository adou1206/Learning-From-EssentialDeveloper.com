//
//  QuestionTest.swift
//  QuizAppTests
//
//  Created by Tow Ching Shen on 11/03/2023.
//

//import Foundation
//import XCTest
//@testable import QuizEngine
//
//final class QuestionTest: XCTestCase {
//    func test_hasValue_withSameWrappedValue_isDifferentForSingleAndMultiplerAnswer() {
//        let aValue = UUID()
//
//        XCTAssertNotEqual(Question.singleAnswer(aValue).hashValue, Question.multipleAnswer(aValue).hashValue)
//    }
//
//    func test_hashValue_singleAnswer() {
//        let aValue = UUID()
//        let anotherValue = UUID()
//
//        XCTAssertEqual(Question.singleAnswer(aValue).hashValue, Question.singleAnswer(aValue).hashValue)
//        XCTAssertNotEqual(Question.singleAnswer(aValue).hashValue, Question.singleAnswer(anotherValue).hashValue)
//    }
//
//    func test_hashValue_multipleAnswer() {
//        let aValue = UUID()
//        let anotherValue = UUID()
//
//        XCTAssertEqual(Question.multipleAnswer(aValue).hashValue, Question.multipleAnswer(aValue).hashValue)
//        XCTAssertNotEqual(Question.multipleAnswer(aValue).hashValue, Question.multipleAnswer(anotherValue).hashValue)
//    }
//}

//
//  QuestionTest.swift
//  QuizAppTests
//
//  Created by Tow Ching Shen on 11/03/2023.
//

import Foundation
import XCTest
@testable import QuizEngine

final class QuestionTest: XCTestCase {
    func test_hashValue_singleAnswer_returnTypeHash() {
        let type = "a string"
        
        let sut = Question.singleAnswer(type)
        
        XCTAssertEqual(sut.hashValue, type.hashValue)
    }
    
    func test_hashValue_multipleAnswer_returnTypeHash() {
        let type = "a string"
        
        let sut = Question.multipleAnswer(type)
        
        XCTAssertEqual(sut.hashValue, type.hashValue)
    }
}
